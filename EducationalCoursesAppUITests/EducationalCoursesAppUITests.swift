//
//  EducationalCoursesAppUITests.swift
//  EducationalCoursesAppUITests
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import XCTest

final class EducationalCoursesAppUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_courseListDisplay() throws {
        //launch the application
        let app = XCUIApplication()
        app.launch()
        
        let cell = app.cells["CourseListTableViewCell-Introduction to Computer Science"]
        //wait until data is fetched
        XCTAssertTrue(cell.waitForExistence(timeout: 2))
        //check course list tableview displayed and cell text does exists
        XCTAssertTrue(cell.staticTexts["Introduction to Computer Science"].exists)
        //tap on cell
        cell.tap()
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
