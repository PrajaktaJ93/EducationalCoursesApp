//
//  ProfileViewModel.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import Foundation
import UIKit

enum ProfileFunctionality {
    case enrollments(String)
    case courseRecommendations(String)
    func get() -> String {
            switch self {
            case .enrollments(let value):
                return value
            case .courseRecommendations(let value):
                return value
            }
        }
}

class ProfileViewModel {
    var coursesArr = [CourseModel]()
    
    let profileFunctionalitiesArr: [Profile] = [Profile(color: UIColor(named: "ColorEnrollments")!,
                                                        functionality: .enrollments("Enrollments")),
                                                Profile(color: UIColor(named: "ColorCourseRecommendations")!,
                                                        functionality: .courseRecommendations("Recommendations"))]
}
