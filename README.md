# EducationalCourses App

## Overview

This app is developed using Swift and UIKit. Also contains basic Unit test and UI test using XCTest framework. This app is using MVVM architecture which cleanly separate an application's business and presentation logic so that it will be easy to write Unit tests.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
- [Recommendation Algoritms](#Recommendation-Algoritms)
  - [Based on interest](#Based-on-interest)
  - [Based on previous enrollments](#Based-on-previous-enrollments)
  - [Based on Popularity](#Based-on-Popularity)
- [Other Algoritmic Solutions](#Other-Algoritmic-Solutions)
  - [Multi-Objective Optimization](#Multi-Objective-Optimization)
  - [Real-time Fraud Detection](#Real-time-Fraud-Detection)
  - [Natural Language Processing for Learning Outcomes](#Natural-Language-Processing-for-Learning-Outcomes)
  - [Dynamic Resource Allocation](#Dynamic-Resource-Allocation)
  - [Explainable AI for Recommendation Transparency](#Explainable-AI-for-Recommendation-Transparency)


## Features

- *User-friendly Interface:* An intuitive and visually appealing user interface.
- *Course List:* Shows course list of available courses
- *Course Detail:* Shows course detail with enrollment for course feature.
- *Enrollment:* Enroll user for perticular course.
- *Profile:* Shows Enrollments and Recommendations options.
- *Responsive Design:* Ensures a consistent and enjoyable experience across various iOS devices.
- *Unit test:* Ensures functionality with Unit test.
- *UI test:* Ensures flow with UI test.


## Getting Started

### Prerequisites

Before you begin, ensure you have the following prerequisites:

- [Xcode](https://developer.apple.com/xcode/) installed on your machine
- Make sure you have support for iOS 16 and above


## Recommendation Algoritms

### Based on interest
<img width="372" alt="Screenshot 2024-04-29 at 7 38 09 PM" src="https://github.com/PrajaktaJ93/EducationalCoursesApp/assets/117655777/bac4bb4a-689c-42e6-86a0-c8ef584ce49c">

### Based on previous enrollments
<img width="587" alt="Screenshot 2024-04-29 at 7 32 47 PM" src="https://github.com/PrajaktaJ93/EducationalCoursesApp/assets/117655777/6c49697a-5a80-42ff-9b1d-c9c124c8a0fa">

### Based on Popularity
<img width="617" alt="Screenshot 2024-04-29 at 7 35 57 PM" src="https://github.com/PrajaktaJ93/EducationalCoursesApp/assets/117655777/1b530cff-4936-449b-aa43-bcb93c9ef754">


## Other Algoritmic Solutions

### Multi-Objective Optimization
1. Take User’s preferences while using app.
2. For diversity of topics, allow user to select more that 3 preferences.
3. While getting course list data -> send keyword list to the Server from API request -> server will apply mapping logic at backend(as it will take more time at device side, it is always recommended to apply high mapping logic at the backend)
4. Get response from the server -> parse that response -> show on app side

### Real-time Fraud Detection
1. Payment Fraud detection:
- While login/ Subscription -> gather user data(transaction Amount, Time, Region, location etc.)
- If you have server -> verify purchase activity with backend

2. Detect other fraud(Like screen recording of exclusive content from app):
- Check screen is being recorded or not using Apple API, 
- If Yes -> Give warning that Screen record while using app is not allowed
- If No -> Continue app usage

3. Ensure using FaceId/ TouchId wherever possible.

### Natural Language Processing for Learning Outcomes
1. Trained Chatboats can be used for instant User communication/ question answering.
2. Sentiment analysis can be done using Positive/Negative sentiments.

### Dynamic Resource Allocation

    - Limited resources allocation can be done with following things-
1. First come First serve principle can be used at a server side
2. We can open 1/2 course per day for each user. So that load balancing at server side.
3. If user watch first full video-> then only enable second video

### Explainable AI for Recommendation Transparency
1. Recommendation logic/mapping generally can be done at backend side so that 1. it will take minimum load at frontend 2. And app can be responsive
2. Recommend courses using Liked video data/ feedback data
3. Recommend using people with similar interest data
4. Recommend using based on previous enrollments
  

