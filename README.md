#AYUSH Virtual Herbal Garden
An Interactive Guide to Medicinal Plants and Ayurvedic Remedies with AI Powered Plant Identification.

 Table of Contents
1. Introduction
2. Features
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
The AYUSH Virtual Herbal Garden aims to revolutionize the identification and utilization of medicinal plants used in AYUSH systems—Ayurveda, Yoga & Naturopathy, Unani, Siddha, and Homeopathy. Leveraging AI-powered technologies, the project enhances precision and accessibility in identifying and utilizing medicinal plants.

Problem Statement: Current plant identification systems rely heavily on human expertise, leading to errors and limited scalability.
Solution: AI and Transfer Learning models enable accurate and efficient plant identification, bridging the gap between traditional Ayurvedic knowledge and modern technology.

Diagram:

Key Features

 1.⁠ ⁠Virtual Herbal Garden

Users can explore a rich digital collection of medicinal plants, learning about their properties, benefits, and traditional uses. The garden provides an interactive visual experience that mimics a real-world herbal environment.

2.⁠ ⁠Medicine Recommendation for Health Issues

Based on user-inputted health concerns, the platform suggests herbal medicines and formulations derived from Ayurvedic classical texts and repositories, promoting natural healing alternatives.

3.⁠ ⁠Yoga Posture Suggestions for Health Issue Cure

Incorporating holistic well-being, the platform provides recommended yoga postures that aid in curing specific health conditions, aligning with traditional healing practices.

 4.⁠ ⁠Medicinal Plant Identification by Image Upload

Users can upload images of medicinal plants, and the system, using machine learning-based image recognition, identifies the plant and provides detailed information on its medicinal properties and uses.

 5.⁠ ⁠User Feedback System

An integrated feedback system allows users to share their experiences, report issues, or suggest improvements, fostering community engagement and continuous enhancement of the platform.

6.⁠ ⁠Search and Filter Functionality

Users can easily search and filter medicinal plants based on name, benefits, health concerns, and Ayurvedic classifications, ensuring quick access to relevant information.

7.⁠ ⁠Voice-Based Search Function

The platform supports voice-based search, enabling users to find information simply by speaking their queries, enhancing accessibility and ease of use.

8.⁠ ⁠Text-to-Speech Feature

To improve user experience, a text-to-speech function is included, allowing users to listen to plant descriptions, medicinal uses, and recommendations instead of reading them.


9.⁠ ⁠QR Code Generation with Download Option

Each medicinal plant profile includes a QR code that users can generate and download, making it easy to share and access plant information instantly.

10.⁠ ⁠Multi-Language Translation

To ensure accessibility for a diverse audience, the platform currently supports English, Telugu, and Hindi, with potential for expansion into more languages in the future.

11. Herbal Teas Preparation and Benefits ☕
Users can explore detailed guides on preparing herbal teas, including the benefits of each tea blend, ingredients, and brewing methods. Whether it's a soothing chamomile tea for relaxation or a ginger-turmeric tea for immunity, this feature promotes healthy lifestyle choices through herbal remedies.


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

 Graphs/Charts: 



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
 Visual Guide: 



 Future Enhancements Planned 
 Realtime Identification: Integrate live camera detection for instant plant identification.
 Mobile App Development: Expand the application to smartphones.
 Enhanced Remedies: Incorporate a wider range of Ayurvedic treatments.



Contributing
We heartly welcome contributions to improve the AYUSH Virtual Herbal Garden. Please follow these steps:
1. Fork the repository.
2. Create a new branch for your feature/bug fix.
3. Submit a pull request with detailed documentation.



 License
This project is licensed under the MIT License. See the LICENSE file for details.


Note: For Figma design, refer to the Figma Design Link
(https://www.figma.com/design/YyYLZuFl1VYqYyzRtYrQhx/GreenHouse?nodeid=01&t=HgbJxDqEQnhcmmwp1).
