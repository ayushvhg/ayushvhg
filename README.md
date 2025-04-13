# AYUSH Virtual Herbal Garden

An Intelligent Virtual Platform for Medicinal Plant Exploration and Ayurvedic Remedy Discovery

---

## 🌿 1. Introduction

The AYUSH Virtual Herbal Garden is a comprehensive educational and wellness platform designed to merge traditional plant-based healthcare wisdom with the power of modern AI and immersive 3D visualization. Our project enables users to learn about, identify, and apply medicinal plant knowledge interactively and accurately — from the comfort of their device.

Through AI-driven plant identification and an interactive virtual garden, the system promotes accessible learning and responsible use of Ayurvedic and AYUSH remedies, while fostering engagement through multi-language support, voice search, and health recommendations.

---

## 💡2. Project Objectives

- To replace physical limitations of herbal gardens by offering a fully interactive **3D Virtual Garden** for browsing AYUSH medicinal plants.
- To automate plant species identification through **AI-based models (EfficientNetB0, ResNet50V2)** trained on diverse botanical datasets.
- To recommend **Ayurvedic remedies and yoga postures** aligned with user-reported health concerns.
- To support inclusivity and accessibility via **voice-driven navigation**, **text-to-speech integration**, and **multi-language content delivery**.
- To simplify knowledge sharing with dynamic **QR code generation** and provide mechanisms for continuous improvement via user feedback.

---

## 🔬3. Scope

The AYUSH Virtual Herbal Garden aims to serve as:

- An educational tool for students, researchers, and the public to learn about the applications of AYUSH medicinal plants.
- A real-time image-based plant identification solution for health-conscious users and botanists.
- A virtual health assistant offering verified Ayurvedic remedies and yoga postures.
- An inclusive platform offering multi-language support and voice-based interactions.
- A scalable framework with future potential for AR/VR expansion and cross-platform mobile applications.

---

##   3.Methodology:

Agile Development — 12 weeks, 6 sprints.


Sprint 1: Core system setup, AI plant identification using EfficientNet & ResNet.

Sprint 2: 3D Virtual Tour & Plant Info (A-Frame).

Sprint 3: Herbal Medicine & Yoga Pose Recommendation Module.

Sprint 4: Herbal Teas Module & QR Code Generation.

Sprint 5: Voice-based search, TTS, Advanced search filters.

Sprint 6: Multi-language support, feedback system, final testing & optimization.


 <img width="954" alt="Screenshot 2025-04-13 at 2 43 45 PM" src="https://github.com/user-attachments/assets/7420f9ab-25aa-4c39-9831-586ad9e75ff2" />
Diagram: Agile Methodology

---

##  4. Features : 


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

---


## 📌 5. Core Features Breakdown

### 🌱 Virtual Herbal Tour
- Explore lifelike 3D models of medicinal plants in a browser-accessible virtual environment powered by **A-Frame VR**.
- Plants are grouped by AYUSH disciplines and tagged with structured data, including their scientific names, medicinal uses, and traditional applications.

### 🖼️ AI-Powered Plant Identification
- Upload plant images and receive accurate identification through deep learning classifiers.
- Models trained via **transfer learning** using the ImageNet dataset as the foundation, fine-tuned on real-world medicinal plant images.
- Achieved performance benchmarks:
  - EfficientNetB0: 99.6% prediction accuracy.
  - ResNet50V2: 96% prediction accuracy.

### 💊 Symptom-Based Remedy Suggestions
- Input symptoms and receive relevant plant-based remedies sourced from authentic Ayurvedic references.
- Outputs include preparation guidelines and safety notes.

### 🧘 Yoga Pose Recommendations
- Suggests yoga postures categorized by user skill level: **Beginner**, **Moderate**, **Advanced**.
- Connects physical well-being practices with plant-based remedies for integrated healing.

### 🍵 Herbal Tea Recipe Module
- Curated collection of health-oriented herbal tea recipes with step-by-step instructions and health benefit insights.
- Recipe categories: immune-boosting, digestion-friendly, calming, and detox blends.

### 🔍 Search and Filter System
- Perform detailed searches using:
  - Plant name (scientific or common).
  - Remedy application.
  - Medicinal properties.
  - Traditional AYUSH categorization.

### 🎤 Voice-Enabled Search
- Voice-based commands enabled via **Web Speech API**, allowing hands-free navigation and data retrieval.

### 🔊 Text-to-Speech Support
- Converts all plant profiles, remedy suggestions, and yoga instructions into speech for improved accessibility.

### 🌐 Multi-Language Translation
- Uses **Google Translate API** for real-time language switching to serve users across linguistic backgrounds.

### 📲 QR Code Generator
- Generates QR codes for easy access and sharing of plant profiles and health tips.

### 💡 User Feedback and Community Input
- Built-in feedback system for continuous improvement, bug reporting, and feature suggestions.

---

## 🧠6. System Architecture Overview

| Layer                      | Purpose                                                   |
|-----------------------------|-----------------------------------------------------------|
| User Interaction Layer      | Handles input (image, voice, symptom) and user commands.  |
| Backend Logic Layer         | Manages AI model inference, data retrieval, and responses. |
| Visualization Layer         | Displays the Virtual Herbal Garden via A-Frame.           |
| Accessibility Layer         | Supports TTS, voice input, and multi-language outputs.    |
| Sharing & Feedback Layer    | QR code generation and user feedback management.          |

---

## 🗂️7. Dataset Overview

- **Volume**: Over 2,000 leaf images.
- **Species Included**: 30 core medicinal plants recognized in the AYUSH framework.
- **Attributes Tracked**:
  - Leaf morphology and visual traits.
  - Scientific and vernacular names.
  - Therapeutic and botanical notes.

**Data Processing Pipeline**:
- Resize input images to standardized dimensions (224x224).
- Normalize pixel data.
- Augment data using rotations, zoom, and flips to prevent overfitting.

---

## ⚙️8. Implementation Overview

- **Deep Learning Frameworks**: EfficientNetB0 and ResNet50V2 for plant classification.
- **Model Training**: Transfer Learning applied to ImageNet-pretrained weights.
- **Performance Metrics**:
  - F1-Score, Precision, Recall, Confusion Matrix.
- **Testing Methodology**:
  - Unit Testing for individual modules.
  - System Integration Testing from input to output validation.
  - User Acceptance Testing (UAT) with field-collected plant images.

---

## 💻9. Technology Stack

| Component            | Technologies Implemented           |
|-----------------------|------------------------------------|
| Backend              | Python (Flask Web Framework)       |
| Frontend             | HTML, CSS, JavaScript, A-Frame VR  |
| Database             | MySQL + SQLAlchemy ORM             |
| AI Models            | TensorFlow, Keras (EfficientNet, ResNet) |
| APIs                 | Google Translate, Web Speech API, QRCode |

---

## 📦10. Dependencies

- Python >= 3.8
- Flask
- TensorFlow
- Keras
- Scikit-Learn
- Pandas
- NumPy
- Matplotlib
- MySQL
- SQLAlchemy
- A-Frame JavaScript Library
- Google Translate API
- Web Speech API
- qrcode Library

---

## 🚀11. Setup and Installation

1. Clone the repository:
```bash
git clone https://github.com/ayushvhg/ayushvhg.git
cd ayushvhg
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Launch the application:
```bash
python app.py
```

---

## 🧑‍💻12. Usage Guide

- Upload plant images to obtain real-time identification.
- Input symptoms to receive remedy and yoga suggestions.
- Explore plant profiles via the 3D Virtual Garden.
- Generate QR codes for offline and cross-device reference.
- Activate voice-driven interactions or TTS for a hands-free experience.
- Submit feedback to help enhance the platform.

---

## 🔮13. Roadmap for Future Enhancements

- Integrate real-time plant identification via device camera.
- Develop Android and iOS native applications.
- Expand dataset to cover 100+ species and multi-season plant samples.
- Build an AI-powered symptom chatbot for wellness advice.
- Introduce interactive quizzes for educational purposes.

---
## 📚14. Literature Review Summary:


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


<img width="760" alt="Screenshot 2025-04-13 at 2 52 03 PM" src="https://github.com/user-attachments/assets/d93ddae0-da2d-478c-aaa6-9f8c3f48e085" />

Diagram: Existing System Architecture

---


## 🤝15. Contribution Workflow

1. Fork the repository.
2. Create a new feature branch: `git checkout -b feature/YourFeature`.
3. Commit and document your changes clearly.
4. Push your feature branch: `git push origin feature/YourFeature`.
5. Open a Pull Request and explain your contribution.

---


## 16.Results :



fig 16.1 Home Page


fig 16.2 Sign In Page


fig 16.3 Sign Up page


fig 16.4 Admin Login Page


fig 16.5 Admin Dashboard


fig 16.6 User Management Dashboard


fig 16.7 Ayush Tour Page


fig 16.8 Ayush Virtual Tour


fig 16.9 Disease Module


fig 16.10 Natural Therapy and Yoga Recommendation Module


fig 16.11 Plant Prediction Module


fig 16.12 Herbal Teas Module

 
fig 16.13 User Feedback


fig 16.14 Admin Feedback Page


fig 16.15 Herbal Plants Module


fig 16.16 Plant Information Module


fig 16.17 Herbal Plant prediction1


fig 16.18 Herbal plant prediction2


fig 16.19 Herbal Plant prediction3


fig 16.20 Herbal Plant Prediction4


---
## 17. Additionals Resources : 

Note: For Figma design, refer to the Figma Design Link
(https://www.figma.com/design/YyYLZuFl1VYqYyzRtYrQhx/GreenHouse?nodeid=01&t=HgbJxDqEQnhcmmwp1).


# large-files-info.txt
Large files (.h5 files) for this project are hosted in a shared Google Drive folder:
https://drive.google.com/drive/folders/1JlnxCB2wxAt0hRhahiH_QmaWfTb80aFg?usp=share_link

To download:
1. Install gdown (`pip install gdown`)
2. Run: `python download_drive_folder.py`

---

## ⚖️18. License

This project is open-source and available under the **MIT License**. Refer to the LICENSE file for full usage terms.

---

**🌿 Discover Natural Remedies. Learn. Heal. Empower — Through AI & Virtual Reality. 🧘‍♂️**

---

