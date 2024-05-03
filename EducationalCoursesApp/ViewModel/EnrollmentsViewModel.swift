//
//  EnrollmentsViewModel.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import Foundation
import UIKit

protocol EnrollmentsViewModelProtocol {
    func selectCourse(showEnrollment: Bool, course: CourseModel, completion: (UIViewController) -> Void)
    func enrollForCourse(course: CourseModel, completion: () -> Void)
}

class EnrollmentsViewModel {
    var enrollmentsArr = [CourseModel]()
    static let shared = EnrollmentsViewModel()
}

extension EnrollmentsViewModel: EnrollmentsViewModelProtocol {
    
    func selectCourse(showEnrollment: Bool,
                      course: CourseModel,
                      completion: (UIViewController) -> Void) {
        let vc = CourseDetailViewController().create(with: course,
                                                     showEnrollment: showEnrollment)
        completion(vc)
    }
    
    func enrollForCourse(course: CourseModel, completion: () -> Void) {
        
        // If course is not enrolled already -> then only add to array
        if enrollmentsArr.contains(where: { $0.courseTitle == course.courseTitle }) {
        } else {
            enrollmentsArr.append(course)
        }
        completion()
    }
}
