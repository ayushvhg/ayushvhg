#AYUSH Virtual Herbal Garden
An Interactive Guide to Medicinal Plants and Ayurvedic Remedies with AI Powered Plant Identification.

 Table of Contents
1. Introduction
2. Table of Contents
3. Features
4. System Analysis
3. Technologies Used 
4. Dataset 
5. System Architecture 
6. Model Workflow 
7. Implementation Details 
8. Results 
9. Installation 
10. Usage 
11. Future Enhancements 
12. Contributing 
13. License 



Introduction
Problem Statement:

Limited access to physical herbal gardens and lack of botanical knowledge lead to plant misidentification and misuse of traditional AYUSH remedies.
Existing resources are non-interactive and not tailored for AYUSH medicinal plants.

Objective:

Create an interactive 3D virtual garden for exploring medicinal plants.
Integrate AI-powered plant identification, personalized herbal medicine & yoga recommendations, voice-based search, text-to-speech, and multi-language support.

Scope:

3D virtual exploration of AYUSH medicinal plants.
AI-driven plant identification and wellness guidance (herbs, yoga).
Herbal tea module and QR code generation for easy sharing.
Accessibility features: voice search, TTS, multilingual support.
Future scope: AR integration, expert consultations, expanded database.

Methodology:

Agile Development — 12 weeks, 6 sprints.


Sprint 1: Core system setup, AI plant identification using EfficientNet & ResNet.

Sprint 2: 3D Virtual Tour & Plant Info (A-Frame).

Sprint 3: Herbal Medicine & Yoga Pose Recommendation Module.

Sprint 4: Herbal Teas Module & QR Code Generation.

Sprint 5: Voice-based search, TTS, Advanced search filters.

Sprint 6: Multi-language support, feedback system, final testing & optimization.


 Diagram:
 <img width="954" alt="Screenshot 2025-04-13 at 2 43 45 PM" src="https://github.com/user-attachments/assets/7420f9ab-25aa-4c39-9831-586ad9e75ff2" />

Features :
1.Virtual Herbal Tour
2.Plant Information Module
3.Medicine Recommendation for Health Issues
4.Yoga Posture Suggestions for Health Issue Cure
5.Medicinal Plant Identification by Image Upload
6.User Feedback System
7.Search and Filter Functionality
8.Voice-Based Search Function
9.Text-to-Speech (TTS) Feature
10.Multi-Language Translation
11.QR Code Generation with Download Option
12.Herbal Teas ModuleLITERATURE REVIEW


📚 Literature Review Summary:
Kavitha et al. (2023)
Developed a MobileNet-based real-time medicinal plant identification system (6 species). Achieved 98.33% accuracy but limited to 6 species and highly dependent on image quality.
Ambarwari et al. (2020)
Used leaf venation features + SVM for plant identification. Accuracy: 82.67%. Limited by image conditions and complex preprocessing.
Azadnia et al. (2022)
Proposed a CNN-based model for leaf identification across 5 species, achieving 99.3% accuracy using multi-resolution testing.
Vanmore et al. (2024)
Introduced a Virtual Herbal Garden platform combining 3D models, plant data, and multimedia. Future scope includes AR, VR, and AI-enhanced search.
Prasvita & Herdiyeni
Created MedLeaf Android App using LBPV + PNN. Accuracy: 56.33%. Faced challenges with similar textures and low-quality images.

💡 Existing System Overview:
Virtual Herbal Garden:
Web platform (HTML, CSS, JS, Node.js, MongoDB) for learning AYUSH medicinal plants through text & multimedia, but lacks 3D/VR interactivity and advanced features.
MobileNet-based Real-Time Identification:
Focused on 6 plant species, trained with ~3,000 images, achieved 98.33% accuracy but limited scalability, narrow species coverage, and cloud-dependency.

⚡ Limitations of Existing Systems:
Limited Accessibility:
Physical gardens & expert knowledge are hard to access; systems lack offline usability and multi-language support.
Scalability Issues:
Existing models handle a limited number of species and struggle with database expansion.
Lack of Engagement:
Minimal interactivity; limited VR/AR, multimedia, personalized learning.
Insufficient AYUSH Context:
Lack of remedy recommendations, yoga suggestions, or holistic health guidance.

🔍 Gap Analysis:
Current systems focus mainly on basic plant identification without AYUSH-specific insights, holistic health recommendations, 3D immersion, accessibility tools, or scalability.
AI-based identification (EfficientNet + ResNet for 30 species).
3D Virtual Garden (A-Frame).
Personalized herbal medicine & yoga recommendations.
Voice search, text-to-speech, QR code, herbal tea module & multi-language support.

🌿 Relevance of the Project:
Aligns with rising global interest in natural remedies and AYUSH-based healthcare.
Empowers students, practitioners, and enthusiasts through accessible, engaging, and immersive learning.
Promotes cultural preservation of Indian traditional medicine via modern technology.
Bridges the gap between traditional wisdom and AI-driven digital solutions.
Supports health education and integration of alternative medicine in modern healthcare.

<img width="760" alt="Screenshot 2025-04-13 at 2 52 03 PM" src="https://github.com/user-attachments/assets/d93ddae0-da2d-478c-aaa6-9f8c3f48e085" />


CHAPTER 3 # SYSTEM ANALYSIS

3.1 Functional Requirements
Virtual Herbal Tour:
Provides a 3D VR garden using A-Frame with plant categories (Ayurveda, Yoga, Unani, Siddha, Homeopathy). Supports full-screen VR, WASD navigation, and displays plant names & descriptions.
Plant Identification Module:
Identifies medicinal plants using CNNs with Transfer Learning (EfficientNet, ResNet) on a dataset of ~2,000 images across 30 species.
User Interface (Flask):
Web-based interface for plant identification and detailed plant info (scientific name, uses, habitat).
Disease & Remedy Module:
Suggests Ayurvedic remedies based on user-inputted symptoms, using a predefined knowledge base.
Prediction Module:
AI-powered plant species prediction from uploaded images, returning botanical and medicinal data.
Herbal Teas Module:
Offers herbal tea recipes with ingredients, preparation steps, and health benefits.
User Engagement & Accessibility:
Features search, plant comparison, bookmarking, voice search, and multi-language support.
Reliability & Performance:
Ensures real-time plant identification with high accuracy and handles multiple requests efficiently.
Data Management:
Scalable plant image storage, easy updates for new species and remedies.


3.2 Software & Hardware Requirements
Hardware:
PC/Laptop (8GB+ RAM, multi-core CPU)
Storage for datasets and models.
Software:
Python, Anaconda, Jupyter Notebook.
Scikit-learn, Pandas, NumPy, Matplotlib, Seaborn.


3.3 Feasibility Study
Technical Feasibility:
Combines Flask, A-Frame, EfficientNet, ResNet, cloud storage, and voice/multilingual features.
Economic Feasibility:
Open-source tools, pre-trained models, and cloud hosting reduce costs while ensuring scalability.
Operational Feasibility:
Real-time plant identification, immersive VR tour, voice search, feedback system, and easy database management.


3.4 Proposed System
Ayush Virtual Herbal Garden combines AI-powered plant identification, VR-based exploration, and Ayurvedic knowledge into a single platform. It uses CNN models (EfficientNet, ResNet) for image-based plant prediction, a Flask-based UI for detailed insights, and an A-Frame-powered virtual garden for interactive learning.

Key Modules:

Virtual Herbal Tour (3D VR garden).
Herbal Info (detailed plant profiles).
Disease & Remedy (symptom-based solutions).
Herbal Prediction (image-based identification).
Herbal Teas (recipes & health benefits).


Advantages:

Accurate AI-based plant identification.
Immersive VR learning.
Comprehensive AYUSH medicinal knowledge.
Scalable, accessible, and cost-effective.


Features
 Plant Identification Module: Upload plant images for identification and detailed information, including scientific names and geographic locations.
 Disease Based medicine recommendation Module: Suggests Ayurvedic remedies, including formulations, usage instructions, and associated yoga practices.
 Interactive UI: Flaskbased application offering userfriendly navigation and engagement.

 Visuals:For visuals check out the figma design link provided in the end of the
file.


Technologies Used
 Programming Languages: Python
 Libraries: Scikitlearn, TensorFlow, Pandas, NumPy, Matplotlib, Seaborn ,
 Deployment Platforms: Flaskbased UI
 Visualization Tools: Figma



 Dataset
 Description: A dataset comprising 4,390 images spanning 35 medicinal plant species.
 Attributes: Leaf morphology, scientific names, medicinal properties.

 Data Visualization: Include Figma diagrams illustrating dataset attributes



System Architecture
A highlevel overview of the system’s workflow:
 Steps: Data ingestion, preprocessing, model training, and deployment.

 Architecture Diagram: Embed Figmabased architecture diagram

 Model Workflow
 Models Used: VGGNet, ResNet, EfficientNet (Transfer Learning).
 Workflow Steps: Data preprocessing -> Feature extraction ->  Model training
 -> Evaluation -> Deployment.

 Implementation Details
 Feature Engineering: Handling missing values, normalization techniques.
 Optimization Strategies: Adam optimizer, early stopping.
 Technical Insights: CNN architecture, transfer learning implementation. 
 Results
 Metrics: Accuracy, F1Score, ROC Curves.
 Visualization: Confusion Matrix, evaluation reports, model comparisons.

 Graphs/Charts: Add visual examples



Installation
1. Clone the repository:
   git clone https://github.com/ayushvhg/ayushvhg.git
2. Install dependencies:
   pip install r requirements.txt
3. Run the application:
   python app.py


 Usage
 Steps:
  1. Upload an image of a plant for identification.
  2. Search for remedies by disease.
 Visual Guide: Add Figmabased UI wireframes for reference



 Future Enhancements
 Realtime Identification: Integrate live camera detection for instant plant identification.
 Mobile App Development: Expand the application to smartphones.
 Enhanced Remedies: Incorporate a wider range of Ayurvedic treatments.



Contributing
We welcome contributions to improve the AYUSH Virtual Herbal Garden. Please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature/bug fix.
3. Submit a pull request with detailed documentation.



 License
This project is licensed under the MIT License. See the LICENSE file for details.


Note: For Figma design, refer to the Figma Design Link
(https://www.figma.com/design/YyYLZuFl1VYqYyzRtYrQhx/GreenHouse?nodeid=01&t=HgbJxDqEQnhcmmwp1).


# large-files-info.txt
Large files (.h5 files) for this project are hosted in a shared Google Drive folder:
https://drive.google.com/drive/folders/1JlnxCB2wxAt0hRhahiH_QmaWfTb80aFg?usp=share_link

To download:
1. Install gdown (`pip install gdown`)
2. Run: `python download_drive_folder.py`

