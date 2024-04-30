//
//  CourseListViewModel.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 28/04/24.
//

import Foundation
import UIKit

protocol CourseListViewModelProtocol {
    func getCourseList()
    func selectCourse(showEnrollment: Bool, course: CourseModel, completion: (UIViewController) -> Void)
}

class CourseListViewModel {
    var coursesArr = [CourseModel]()
}

extension CourseListViewModel: CourseListViewModelProtocol {
    
    func getCourseList() {
        coursesArr = Courses().courseArr
    }
    
    func selectCourse(showEnrollment: Bool, course: CourseModel, completion: (UIViewController) -> Void) {
        let vc = CourseDetailViewController().create(with: course,
                                                     showEnrollment: showEnrollment)
        completion(vc)
    }

}
