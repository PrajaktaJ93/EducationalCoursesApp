//
//  Courses.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import Foundation

//This class have mock data used allover the app.
class Courses {
    let courseArr = [
        CourseModel(courseTitle: "Introduction to Computer Science",
                    courseDescription: "This course provides an overview of fundamental concepts in computer science, including algorithms, data structures, and programming languages. Students will gain hands-on experience through coding assignments and projects.",
                    instructorName: "Dr. John Smith",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink:"https://www.coursera.org/specializations/python",
                                              videoName: "Data structures"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.udemy.com/course/the-complete-web-developer-course/", videoName: "Programming languages"),
                                   VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "Explore techniques"),
                                   VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink: "https://www.udemy.com/course/the-complete-web-developer-course/", videoName: "Explore techniques New")],
                    keywords: ["computer science", "data structures", "programming languages"]),
                    
        
        CourseModel(courseTitle: "Data Analysis and Visualization",
                    courseDescription: "Explore techniques for analyzing and visualizing data sets using popular tools such as Python, R, and Tableau. This course covers data cleaning, statistical analysis, and effective data visualization techniques for conveying insights.",
                    instructorName: "Prof. Emily Johnson",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "visualization techniques"),
                                   VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.edx.org/micromasters/data-science", videoName: "conveying insights")],
                    keywords: ["visualizing data", "statistical analysis", "data cleaning"]),
        
        CourseModel(courseTitle: "Web Development Bootcamp",
                    courseDescription: "Learn the essentials of web development, including HTML, CSS, JavaScript, and responsive design principles. Build dynamic websites and web applications from scratch, with a focus on modern development practices and frameworks.",
                    instructorName: "Dr. John Smith",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.edx.org/course/cs50s-introduction-to-computer-science", videoName: "implementing machine learning"),
                                   VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink: "https://www.edx.org/micromasters/data-science", videoName: "Build dynamic websites"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "modern development practices")],
                    keywords: ["web applications", "development practices"]),
        
        CourseModel(courseTitle: "Introduction to Machine Learning",
                    courseDescription: "Dive into the exciting field of machine learning and discover algorithms for supervised and unsupervised learning. Topics include regression, classification, clustering, and neural networks, with hands-on experience in implementing machine learning models.",
                    instructorName: "Dr. Rachel Lee",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "including budgeting"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.edx.org/micromasters/data-science", videoName: "implementing machine learning")],
                    keywords: ["clustering", "machine learning"]),
        
        CourseModel(courseTitle: "Financial Planning and Analysis",
                    courseDescription: "Gain a comprehensive understanding of financial planning and analysis techniques, including budgeting, forecasting, and financial modeling. Learn how to interpret financial data and make strategic decisions to optimize business performance.",
                    instructorName: "Brian Anderson",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/", videoName: "Create their own mobile applications"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.edx.org/course/cs50s-introduction-to-computer-science", videoName: "Financial modeling"),
                                   VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.edx.org/micromasters/data-science", videoName: "Including budgeting")],
                    keywords: ["forecasting", "financial data"]),
        
        CourseModel(courseTitle: "Mobile App Development",
                    courseDescription: "Explore the principles and practices of mobile app development for iOS and Android platforms. Topics include user interface design, app architecture, and integration of APIs. Students will create their own mobile applications and deploy them to app stores.",
                    instructorName: "Sarah Kim",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/", videoName: "Create own mobile applications"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "Analytics tools")],
                    keywords: ["mobile applications", "iOS", "Android"]),
        
        CourseModel(courseTitle: "Digital Marketing Strategies",
                    courseDescription: "Learn how to develop and execute effective digital marketing campaigns across various platforms, including social media, email, and search engines. Topics include SEO, SEM, content marketing, and analytics tools for measuring campaign performance",
                    instructorName: "Alex Thompson",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "Analytics tools"),
                                   VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.edx.org/course/cs50s-introduction-to-computer-science", videoName: "Artificial intelligence")],
                    keywords: ["performance", "search engines", "SEO", "SEM"]),
        
        CourseModel(courseTitle: "Introduction to Artificial Intelligence",
                    courseDescription: "Delve into the fundamentals of artificial intelligence and machine learning algorithms. Topics include natural language processing, computer vision, and reinforcement learning. Students will work on projects to apply AI techniques to real-world problems..",
                    instructorName: "Dr. Michael Chen",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/", videoName: "Artificial intelligence"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.edx.org/course/cs50s-introduction-to-computer-science", videoName: "Master the essential principles")],
                    keywords: ["computer vision", "reinforcement learning"]),
        
        CourseModel(courseTitle: "Project Management Fundamentals",
                    courseDescription: "Master the essential principles of project management, including project planning, scheduling, and team coordination. Learn how to use project management tools and techniques to successfully deliver projects on time and within budget.",
                    instructorName: " Lisa Rodriguez",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.edx.org/course/cs50s-introduction-to-computer-science", videoName: "Project management tools and techniques"),
                                   VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/", videoName: "Corporate Responsibility")],
                    keywords: ["project planning", "project management"]),
        
        CourseModel(courseTitle: "Business Ethics and Corporate Responsibility",
                    courseDescription: "Examine ethical dilemmas in business and corporate decision-making processes. Topics include corporate governance, sustainability, and social responsibility. Students will analyze case studies and discuss ethical frameworks for guiding business practices.",
                    instructorName: "Dr. Mark Wilson",
                    videoModules: [VideoModel(videoThumbnail: "thumbnail1",
                                              videoLink: "https://www.freecodecamp.org/learn/javascript-algorithms-and-data-structures/", videoName: "Examine ethical dilemmas"),
                                   VideoModel(videoThumbnail: "thumbnail3",
                                              videoLink: "https://www.edx.org/course/cs50s-introduction-to-computer-science", videoName: "Ethical frameworks"),
                                   VideoModel(videoThumbnail: "thumbnail2",
                                              videoLink: "https://www.udacity.com/course/intro-to-artificial-intelligence--cs271", videoName: "Frameworks for guiding business practices")],
                    keywords: ["ethical dilemmas", "sustainability", "social responsibility"])]
        
}
        
