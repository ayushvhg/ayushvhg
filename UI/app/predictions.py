from flask import Blueprint, redirect, request, jsonify, session, current_app, render_template, url_for, flash
import pickle
import os
import pandas as pd
from datetime import datetime
from .models import Prediction, db
import numpy as np
import tensorflow as tf
from keras.models import load_model

# Define the Blueprint
predictions_bp = Blueprint('predictions', __name__)

@predictions_bp.route('/test', methods=['GET'])
def test_prediction_route():
    return jsonify({'message': 'Predictions Blueprint is active!'}), 200

# Load Models
models_paths = os.path.join(os.getcwd(), 'models')

# Herbal Model
model_path_herbal = os.path.join(models_paths, 'plant.h5')
classes_herbal = ['Alpinia Galanga (Rasna)',
'Amaranthus Viridis (Arive-Dantu)',
'Artocarpus Heterophyllus (Jackfruit)',
'Azadirachta Indica (Neem)',
'Basella Alba (Basale)',
'Brassica Juncea (Indian Mustard)',
'Carissa Carandas (Karanda)',
'Citrus Limon (Lemon)',
'Ficus Auriculata (Roxburgh fig)',
'Ficus Religiosa (Peepal Tree)',
'Hibiscus Rosa-sinensis',
'Jasminum (Jasmine)',
'Mangifera Indica (Mango)',
'Mentha (Mint)',
'Moringa Oleifera (Drumstick)',
'Muntingia Calabura (Jamaica Cherry-Gasagase)',
'Murraya Koenigii (Curry)',
'Nerium Oleander (Oleander)',
'Nyctanthes Arbor-tristis (Parijata)',
'Ocimum Tenuiflorum (Tulsi)',
'Piper Betle (Betel)',
'Plectranthus Amboinicus (Mexican Mint)',
'Pongamia Pinnata (Indian Beech)',
'Psidium Guajava (Guava)',
'Punica Granatum (Pomegranate)',
'Santalum Album (Sandalwood)',
'Syzygium Cumini (Jamun)',
'Syzygium Jambos (Rose Apple)',
'Tabernaemontana Divaricata (Crape Jasmine)','Trigonella Foenum-graecum (Fenugreek)']
herbal_model = load_model(model_path_herbal)

# Utility Functions

def preprocess_image(image_path, target_size=(224, 224)):
    img = tf.keras.preprocessing.image.load_img(image_path, target_size=target_size)
    x = np.array(img)
    return np.expand_dims(x, axis=0)

# Herbal Disease Prediction Route
@predictions_bp.route('/predict/herbal', methods=['GET', 'POST'])
def predict_herbal():
    if request.method == 'GET':
        return render_template('predict_herbal.html')

    uploaded_file = request.files.get('herbalImage')
    if not uploaded_file or uploaded_file.filename == '':
        flash('No file selected or uploaded.', 'danger')
        return render_template('predict_herbal.html')

    temp_path = os.path.join('uploads', uploaded_file.filename)
    print(temp_path)
    uploaded_file.save(temp_path)
    
    try:
        img_data = preprocess_image(temp_path)
        prediction = herbal_model.predict(img_data)
        predicted_label = classes_herbal[np.argmax(prediction)]
        prediction_probs = prediction

        new_prediction = Prediction(
            user_id=session.get('user_id'),
            prediction_type='herbal',
            input_data=uploaded_file.filename,
            result=predicted_label,
            created_at=datetime.utcnow()
        )
        db.session.add(new_prediction)
        db.session.commit()

        return render_template('herbal_result.html', image_filename=uploaded_file.filename,predicted_label=predicted_label,prediction_prob=prediction_probs.tolist())
    finally:
        os.remove(temp_path)

