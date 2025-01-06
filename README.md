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

 Diagram: Add Figmabased visual here



Features
 AI-Powered Identification: Upload plant images for identification and detailed information, including scientific names and geographic locations.
 Disease Module: Suggests Ayurvedic remedies, including formulations, usage instructions, and associated yoga practices.
 Interactive UI: Flaskbased application offering userfriendly navigation and engagement.

 Visuals: Add Figma screenshots or mockups for features



Technologies Used
 Programming Languages: Python
 Libraries: Scikitlearn, TensorFlow, Pandas, NumPy, Matplotlib, Seaborn
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
 Workflow Steps: Data preprocessing ? Feature extraction ? Model training ? Evaluation ? Deployment.

 Workflow Diagram: Add Figmabased workflow diagram



 Implementation Details
 Feature Engineering: Handling missing values, normalization techniques.
 Optimization Strategies: Adam optimizer, early stopping.
 Technical Insights: CNN architecture, transfer learning implementation.

 Sequence Diagrams: Add Figma sequence diagrams for clarity



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
