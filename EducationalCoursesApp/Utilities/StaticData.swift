//
//  StaticData.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 28/04/24.
//

import Foundation

struct StaticData {
    // Hard coded app strings
    struct AppStrings {
        static let courseList = "Course List"
        static let enrollment = "Enrollment"
        static let courseDetail = "Course Detail"
        static let videoModules = "Video Modules"
        static let enrollments = "Enrollments"
    }
    
    // storyboard Identifiers to help get/change them at one place
    struct Identifiers {
        static let mainStoryboard = "Main"
        
        static let profileViewController = "ProfileViewController"
        static let courseDetailViewController = "CourseDetailViewController"
        static let enrollmentListViewController = "EnrollmentListViewController"

        static let genericTableViewCell = "GenericTableViewCell"
        static let courseListTableViewCell = "CourseListTableViewCell"
        static let courseDetailTableViewCell = "CourseDetailTableViewCell"
        static let enrollmentsTableViewCell = "EnrollmentsTableViewCell"
        static let videoModulesTableViewCell = "VideoModulesTableViewCell"
        
        static let videoDetailsCollectionViewCell = "VideoDetailsCollectionViewCell"
    }
   
}


