//
//  CourseModel.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import Foundation

struct CourseModel {
    let courseTitle: String
    let courseDescription: String
    let instructorName: String
    let videoModules: [VideoModel]
    let keywords: [String]
}
