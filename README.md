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


<img width="844" alt="Screenshot 2025-04-13 at 4 57 56 PM" src="https://github.com/user-attachments/assets/c7c8c55a-df1d-45aa-821f-bbc50c7a2218" />

fig 16.1 Home Page

<img width="834" alt="Screenshot 2025-04-13 at 4 58 34 PM" src="https://github.com/user-attachments/assets/77ad44dc-a3ad-49c4-9f36-68f0611a1997" />

fig 16.2 Sign In Page

<img width="836" alt="Screenshot 2025-04-13 at 4 58 54 PM" src="https://github.com/user-attachments/assets/677f62b7-fc18-46bd-a092-bacfe4487693" />

fig 16.3 Sign Up page

<img width="833" alt="Screenshot 2025-04-13 at 4 59 09 PM" src="https://github.com/user-attachments/assets/787a2344-1699-4aaa-b04c-6ae19627abaf" />

fig 16.4 Admin Login Page

<img width="890" alt="Screenshot 2025-04-13 at 4 59 25 PM" src="https://github.com/user-attachments/assets/558630d0-b66c-425a-80dc-1e1e37a9e6da" />

fig 16.5 Admin Dashboard

<img width="845" alt="Screenshot 2025-04-13 at 4 59 41 PM" src="https://github.com/user-attachments/assets/4c15aebb-9b82-4c9a-93a7-3250071f4d81" />

fig 16.6 User Management Dashboard

<img width="851" alt="Screenshot 2025-04-13 at 4 59 58 PM" src="https://github.com/user-attachments/assets/6b68ec07-1940-4bdf-b7ca-c5406d0d6a73" />

fig 16.7 Ayush Tour Page

<img width="865" alt="Screenshot 2025-04-13 at 5 00 10 PM" src="https://github.com/user-attachments/assets/483db004-1a47-4762-a80a-70d8abe8f434" />

fig 16.8 Ayush Virtual Tour

<img width="827" alt="Screenshot 2025-04-13 at 5 00 23 PM" src="https://github.com/user-attachments/assets/bd2a9b03-9f50-4c0c-bec5-54846bb20897" />

fig 16.9 Disease Module

<img width="759" alt="Screenshot 2025-04-13 at 5 00 37 PM" src="https://github.com/user-attachments/assets/2cd02f62-6700-4f1e-8a41-6c13ab9cc59c" />

fig 16.10 Natural Therapy and Yoga Recommendation Module

<img width="704" alt="Screenshot 2025-04-13 at 5 00 50 PM" src="https://github.com/user-attachments/assets/643d1261-59ff-4c9f-a8df-dd588812db28" />

fig 16.11 Plant Prediction Module

<img width="841" alt="Screenshot 2025-04-13 at 5 01 00 PM" src="https://github.com/user-attachments/assets/75cb49bd-9cf0-41d3-9e26-424f1e434910" />

fig 16.12 Herbal Teas Module

 <img width="842" alt="Screenshot 2025-04-13 at 5 01 18 PM" src="https://github.com/user-attachments/assets/68c96650-5e63-41b4-9c37-3a04737e5ecb" />

fig 16.13 User Feedback

<img width="865" alt="Screenshot 2025-04-13 at 5 01 32 PM" src="https://github.com/user-attachments/assets/84721e05-4d1a-4112-bbee-8dc6c52cb176" />

fig 16.14 Admin Feedback Page

<img width="830" alt="Screenshot 2025-04-13 at 5 01 48 PM" src="https://github.com/user-attachments/assets/86081edd-7baf-4aeb-8e23-3e69028468c9" />

fig 16.15 Herbal Plants Module

<img width="841" alt="Screenshot 2025-04-13 at 5 02 05 PM" src="https://github.com/user-attachments/assets/e6a1ad82-bff7-46e6-b95b-c9c88d15fb28" />

fig 16.16 Plant Information Module

<img width="889" alt="Screenshot 2025-04-13 at 5 02 19 PM" src="https://github.com/user-attachments/assets/620f2474-74dc-40d1-b462-f1124b64cd74" />

fig 16.17 Herbal Plant prediction1

<img width="886" alt="Screenshot 2025-04-13 at 5 02 35 PM" src="https://github.com/user-attachments/assets/ad04dbda-8311-4e4f-a02d-f498fb2ffe5d" />

fig 16.18 Herbal plant prediction2

<img width="763" alt="Screenshot 2025-04-13 at 5 02 52 PM" src="https://github.com/user-attachments/assets/a6e2dd5e-3f50-4e88-b993-e3ed9218a049" />

fig 16.19 Herbal Plant prediction3

<img width="814" alt="Screenshot 2025-04-13 at 5 03 03 PM" src="https://github.com/user-attachments/assets/b0d426cb-b23e-43f8-be53-ac2dc2bcd0d3" />

fig 16.20 Herbal Plant Prediction4


---
## 17. Additionals Resources : 

Note: For Figma design, refer to the Figma Design Link
(https://www.figma.com/design/YyYLZuFl1VYqYyzRtYrQhx/GreenHouse?nodeid=01&t=HgbJxDqEQnhcmmwp1).


## Large-files-info.txt
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

