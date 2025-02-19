from flask import Flask, session, current_app
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from flask_session import Session
import os

# Initialize extensions
db = SQLAlchemy()  # Single instance
migrate = Migrate()

def create_app():
    app = Flask(__name__)

    # Configurations
    app.config['SQLALCHEMY_DATABASE_URI'] = os.getenv(
        'DATABASE_URI',
        'mysql+pymysql://root:root@localhost/herbal'
    )
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
    app.config['SECRET_KEY'] = os.getenv('SECRET_KEY', 'your_secret_key')
    app.config['SESSION_TYPE'] = 'filesystem'

    # Initialize extensions
    db.init_app(app)
    migrate.init_app(app, db)
    Session(app)

    # Import models and routes to avoid circular imports
    with app.app_context():
        from .models import User, Prediction, OTP, Admin, AuditLog
        from .routes import main
        from .predictions import predictions_bp

        # Register blueprints
        app.register_blueprint(main)
        #app.register_blueprint(predictions_bp, url_prefix='/predict')
        app.register_blueprint(predictions_bp, url_prefix='/api')

        # Create all tables if they don't exist (optional for development)
        db.create_all()

    @app.context_processor
    def inject_user():
        user = None
        if 'user_id' in session:
            user = User.query.get(session['user_id'])
        return dict(user=user)

    return app
