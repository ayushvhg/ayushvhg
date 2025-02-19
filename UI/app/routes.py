from flask import Blueprint, render_template, request, redirect, url_for, flash, session
from .models import User, OTP, Prediction, Admin, HerbalPlant, Disease
from .helpers import send_otp_signin, send_otp_reset, send_otp_signup
from . import db
import bcrypt
from datetime import datetime, timedelta
import random

main = Blueprint('main', __name__)

@main.route('/')
def index():
    return render_template('index.html')

# Herbal Plants Page
@main.route("/herbal_plants")
def herbal_plants():
    search_query = request.args.get('search', '').lower()
    plants = HerbalPlant.query.all()

    if search_query:
        plants = [plant for plant in plants if search_query in plant.common_name.lower()]

    return render_template("herbal_plants.html", plants=plants)

# Detailed Herbal Plant Page
@main.route("/herbal-plants/<int:plant_id>")
def herbal_plant_detail(plant_id):
    plant = HerbalPlant.query.get_or_404(plant_id)
    return render_template("herbal_plant_detail.html", plant=plant)

# Disease Page
@main.route("/diseases", methods=["GET", "POST"])
def diseases():
    diseases = Disease.query.all()

    if request.method == "POST":
        disease_id = request.form.get("disease")
        disease = Disease.query.get(disease_id)
        return render_template("disease.html", diseases=diseases, selected_disease=disease)

    return render_template("disease.html", diseases=diseases, selected_disease=None)

@main.route('/signin', methods=['GET', 'POST'])
def signin():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password').encode('utf-8')

        # Fetch user from the database
        user = User.query.filter_by(email=email).first()

        if not user:
            flash('Email not registered.', 'danger')
            return render_template('signin.html')

        if not bcrypt.checkpw(password, user.password.encode('utf-8')):
            flash('Incorrect password.', 'danger')
            return render_template('signin.html')

        if user.status == 'inactive':
            flash('Waiting for admin approval.', 'warning')
            return render_template('signin.html')

        # Generate OTP and store in the database
        otp = random.randint(100000, 999999)
        otp_expiration = datetime.utcnow() + timedelta(minutes=10)

        otp_entry = OTP.query.filter_by(email=email).first()
        if otp_entry:
            otp_entry.otp = otp
            otp_entry.created_at = otp_expiration
        else:
            new_otp = OTP(email=email, otp=str(otp), created_at=otp_expiration)
            db.session.add(new_otp)

        db.session.commit()

        # Send OTP
        send_otp_signin(email, otp)
        flash('OTP sent to your email.', 'success')

        session['signin_email'] = email
        return redirect(url_for('main.verify_signin_otp'))

    return render_template('signin.html')



@main.route('/verify_signin_otp', methods=['GET', 'POST'])
def verify_signin_otp():
    email = session.get('signin_email')
    if not email:
        return redirect(url_for('main.signin'))

    if request.method == 'POST':
        entered_otp = request.form.get('otp')
        otp_entry = OTP.query.filter_by(email=email).first()

        if not otp_entry:
            flash('No OTP found for this email.', 'danger')
            return redirect(url_for('main.signin'))

        if otp_entry.created_at < datetime.utcnow():
            flash('OTP has expired.', 'danger')
            db.session.delete(otp_entry)
            db.session.commit()
            return redirect(url_for('main.signin'))

        if otp_entry.otp != entered_otp:
            flash('Incorrect OTP.', 'danger')
            return render_template('verify_signin_otp.html')

        # OTP validation successful
        db.session.delete(otp_entry)
        db.session.commit()
        user = User.query.filter_by(email=email).first()
        session['user_id'] = user.id
        session.pop('signin_email', None)
        flash('Sign in successful.', 'success')
        return redirect(url_for('main.dashboard'))

    return render_template('verify_signin_otp.html')


@main.route('/signup', methods=['GET', 'POST'])
def signup():
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        password = request.form['password'].encode('utf-8')
        hashed_password = bcrypt.hashpw(password, bcrypt.gensalt())
        mobile = request.form['mobile']
        dob = request.form['dob']
        security_question = request.form['security_question']
        security_answer = request.form['security_answer']

        user = User.query.filter_by(email=email).first()
        if user:
            flash('Email already registered.', 'danger')
            return render_template('signup.html')

        # Generate OTP and store it temporarily in the session
        otp = random.randint(100000, 999999)
        session['signup_data'] = {
            'name': name,
            'email': email,
            'password': hashed_password.decode('utf-8'),
            'mobile': mobile,
            'dob': dob,
            'security_question': security_question,
            'security_answer': security_answer,
            'otp': otp,
        }

        # Send OTP to the user's email
        send_otp_signup(email, otp)
        flash('OTP sent to your email for verification.', 'success')
        return redirect(url_for('main.verify_signup_otp'))

    return render_template('signup.html')

# verify_signup_otp
@main.route('/verify_signup_otp', methods=['GET', 'POST'])
def verify_signup_otp():
    signup_data = session.get('signup_data')
    if not signup_data:
        return redirect(url_for('main.signup'))

    if request.method == 'POST':
        entered_otp = request.form['otp']

        # Check if the OTP matches
        if str(signup_data['otp']) != entered_otp:
            flash('Incorrect OTP. Please try again.', 'danger')
            return render_template('verify_signup_otp.html')

        # Create user account after successful OTP verification
        new_user = User(
            name=signup_data['name'],
            email=signup_data['email'],
            password=signup_data['password'],
            mobile=signup_data['mobile'],
            dob=signup_data['dob'],
            security_question=signup_data['security_question'],
            security_answer=signup_data['security_answer'],
            status='inactive'  # Initially inactive, admin needs to activate
        )
        db.session.add(new_user)
        db.session.commit()

        # Clear session data after successful signup
        session.pop('signup_data', None)
        flash('Account created successfully. Waiting for admin approval.', 'success')
        return redirect(url_for('main.signin'))

    return render_template('verify_signup_otp.html')


@main.route('/dashboard')
def dashboard():
    if 'user_id' not in session:
        flash('You must be logged in to access the dashboard.', 'danger')
        return redirect(url_for('main.signin'))

    user = User.query.get(session['user_id'])

    if not user:
        flash('User not found. Please log in again.', 'danger')
        session.pop('user_id', None)
        return redirect(url_for('main.signin'))

    # Handle archived users
    if user.status == 'archived':
        return render_template('archived_dashboard.html', user=user)

    # Fetch prediction history for active users
    predictions = Prediction.query.filter_by(user_id=user.id).all()
    return render_template('dashboard.html', user=user, predictions=predictions)



# Forgot Password
@main.route('/forgot_password', methods=['GET', 'POST'])
def forgot_password():
    if request.method == 'POST':
        email = request.form['email']
        user = User.query.filter_by(email=email).first()

        if user:
            session['reset_email'] = email  # Store email in session
            session['security_question'] = user.security_question  # Store security question
            flash('Email found. Answer the security question.', 'success')
            return redirect(url_for('main.security_question'))
        else:
            flash('Email not found.', 'danger')
    return render_template('forgot_password.html')

@main.route('/security_question', methods=['GET', 'POST'])
def security_question():
    email = session.get('reset_email')
    question = session.get('security_question')

    if not email or not question:
        flash('Session expired. Please try again.', 'warning')
        return redirect(url_for('main.forgot_password'))

    if request.method == 'POST':
        answer = request.form['security_answer']
        user = User.query.filter_by(email=email).first()

        if user and user.security_answer.lower() == answer.lower():
            otp = random.randint(100000, 999999)
            send_otp_reset(email, otp)  # Send OTP to email
            session['otp'] = otp  # Store OTP in session
            flash('Security answer correct. OTP sent to your email.', 'success')
            return redirect(url_for('main.verify_reset_otp'))
        else:
            flash('Incorrect security answer.', 'danger')

    return render_template('security_question.html', question=question)


# OTP Verification
@main.route('/verify_reset_otp', methods=['GET', 'POST'])
def verify_reset_otp():
    email = session.get('reset_email')
    otp = session.get('otp')

    if not email or not otp:
        flash('Session expired. Please try again.', 'warning')
        return redirect(url_for('main.forgot_password'))

    if request.method == 'POST':
        entered_otp = request.form.get('otp')

        if str(otp) == entered_otp:
            flash('OTP verified. You can now reset your password.', 'success')
            return redirect(url_for('main.reset_password'))
        else:
            flash('Incorrect OTP. Please try again.', 'danger')

    return render_template('verify_reset_otp.html')




# Reset Password
@main.route('/reset_password', methods=['GET', 'POST'])
def reset_password():
    email = session.get('reset_email')

    if not email:
        flash('Session expired. Please try again.', 'warning')
        return redirect(url_for('main.forgot_password'))

    if request.method == 'POST':
        new_password = request.form['new_password'].encode('utf-8')
        confirm_password = request.form['confirm_password'].encode('utf-8')

        if new_password == confirm_password:
            hashed_password = bcrypt.hashpw(new_password, bcrypt.gensalt())
            user = User.query.filter_by(email=email).first()
            user.password = hashed_password.decode('utf-8')
            db.session.commit()
            flash('Password reset successful. You can now log in.', 'success')
            session.pop('reset_email', None)  # Clear session data
            session.pop('otp', None)
            session.pop('security_question', None)
            return redirect(url_for('main.signin'))
        else:
            flash('Passwords do not match.', 'danger')

    return render_template('reset_password.html')


# Admin Login
@main.route('/admin_login', methods=['GET', 'POST'])
def admin_login():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password'].encode('utf-8')

        admin_user = Admin.query.filter_by(username=username).first()

        if admin_user and bcrypt.checkpw(password, admin_user.password.encode('utf-8')):
            session['admin'] = admin_user.id
            flash('Welcome Admin!', 'success')
            return redirect(url_for('main.admin_dashboard'))
        else:
            flash('Invalid username or password.', 'danger')

    return render_template('admin_login.html')

# Admin Dashboard
from flask import jsonify  # For passing data to JavaScript

@main.route('/admin_dashboard')
def admin_dashboard():
    if not session.get('admin'):
        return redirect(url_for('main.admin_login'))

    # Data for total users by status
    active_users = User.query.filter_by(status='active').count()
    inactive_users = User.query.filter_by(status='inactive').count()
    archived_users = User.query.filter_by(status='archived').count()
    deleted_users = User.query.filter_by(status='deleted').count()

    # Top 5 users by prediction count
    top_users = db.session.query(
        User.name, db.func.count(Prediction.id).label('predictions')
    ).join(Prediction).group_by(User.id).order_by(db.desc('predictions')).limit(5).all()

    top_users_data = {
        "labels": [user.name for user in top_users],
        "values": [user.predictions for user in top_users],
    }
    print("Top Users Data:", top_users_data)
    

    # Predictions by type
    prediction_counts = db.session.query(
        Prediction.prediction_type, db.func.count(Prediction.id)
    ).group_by(Prediction.prediction_type).all()

    prediction_data = {
        "labels": [prediction[0] for prediction in prediction_counts],
        "values": [prediction[1] for prediction in prediction_counts],
    }
    print("Prediction Data:", prediction_data)

    return render_template(
        'admin_dashboard.html',
        active_users=active_users,
        inactive_users=inactive_users,
        archived_users=archived_users,
        deleted_users=deleted_users,
        top_users_data=top_users_data,
        prediction_data=prediction_data,
    )

# Manage Users
@main.route('/manage_users', methods=['GET', 'POST'])
def manage_users():
    if not session.get('admin'):
        return redirect(url_for('main.admin_login'))

    users = User.query.all()

    if request.method == 'POST':
        action = request.form.get('action')
        user_id = request.form.get('user_id')
        user = User.query.get(user_id)

        if not user:
            flash('User not found.', 'danger')
            return redirect(url_for('main.manage_users'))

        if action == 'archive':
            user.status = 'archived'
            db.session.commit()
            flash(f'User {user.name} archived.', 'warning')
        elif action == 'activate':
            user.status = 'active'
            db.session.commit()
            flash(f'User {user.name} activated.', 'success')
        elif action == 'delete':
            db.session.delete(user)
            db.session.commit()
            flash(f'User {user.name} deleted.', 'danger')

    return render_template('manage_users.html', users=users)

import csv
from io import StringIO
from flask import Response

@main.route('/download_prediction_history')
def download_prediction_history():
    if not session.get('admin'):
        flash("You must be logged in as admin to download the prediction history.", "danger")
        return redirect(url_for('main.admin_login'))

    # Query prediction data
    predictions = db.session.query(
        Prediction.id, User.name, Prediction.prediction_type,
        Prediction.input_data, Prediction.result, Prediction.created_at
    ).join(User).all()

    # Create a CSV file in memory
    si = StringIO()
    writer = csv.writer(si)
    # Write the header row
    writer.writerow(['ID', 'User', 'Type', 'Input', 'Result', 'Date'])
    # Write the data rows
    for prediction in predictions:
        writer.writerow([prediction.id, prediction.name, prediction.prediction_type, 
                         prediction.input_data, prediction.result, prediction.created_at])

    # Generate the response
    output = Response(si.getvalue(), mimetype='text/csv')
    output.headers['Content-Disposition'] = 'attachment; filename=prediction_history.csv'
    return output

# Prediction History
@main.route('/prediction_history')
def prediction_history():
    if not session.get('admin'):
        return redirect(url_for('main.admin_login'))

    predictions = db.session.query(
        Prediction.id, User.name, Prediction.prediction_type,
        Prediction.input_data, Prediction.result, Prediction.created_at
    ).join(User).all()

    return render_template('prediction_history.html', predictions=predictions)

@main.route('/logout')
def logout():
    # Handle user logout
    if 'user_id' in session:
        session.pop('user_id', None)  # Clear user session
        flash('You have been logged out.', 'success')
        return redirect(url_for('main.signin'))

    # Handle admin logout
    if 'admin' in session:
        session.pop('admin', None)  # Clear admin session
        flash('Admin has been logged out.', 'success')
        return redirect(url_for('main.admin_login'))

    # Fallback for unauthorized access to logout
    flash('You are not logged in.', 'info')
    return redirect(url_for('main.index'))
