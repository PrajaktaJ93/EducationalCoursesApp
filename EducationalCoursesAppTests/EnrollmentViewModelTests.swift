//
//  EnrollmentViewModelTests.swift
//  EducationalCoursesAppTests
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import XCTest
@testable import EducationalCoursesApp

final class EnrollmentViewModelTests: XCTestCase {
    
    var enrollmentModel: EnrollmentsViewModel!
    var enrollmentActionCalled = false
    var enrollmentCourseSelectCalled = false
    
    var courseMock = CourseModel(courseTitle: "courseTitle", 
                                 courseDescription: "courseDescription",
                                 instructorName: "instructorName",
                                 videoModules: [VideoModel(videoThumbnail: "videoThumbnail",
                                                           videoLink: "videoLink",
                                                           videoName: "videoName")],
                                 keywords: ["keywords"])
    
    
    override func setUp() {
        super.setUp()
        enrollmentModel = EnrollmentsViewModel()
    }
    
    override func tearDown() {
        enrollmentModel = nil
        super.tearDown()
    }
    
    func test_courseSelected() {
        enrollmentModel.selectCourse(showEnrollment: false, course: courseMock, completion: {_ in
            self.enrollmentCourseSelectCalled = true
            XCTAssert(self.enrollmentCourseSelectCalled, "Enrolled course has been selected")
        })
    }
    
    //Unit test to check course enrolled successfully
    func test_enrollmentForCourse_success() {
        enrollmentModel.enrollForCourse(course: courseMock, completion: {
            self.enrollmentActionCalled = true
            XCTAssert(self.enrollmentActionCalled, "Course enrolled successfully")
        })
    }
    
}
