//
//  EnrollmentListViewController.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import UIKit

class EnrollmentListViewController: UIViewController {
    
    @IBOutlet weak var enrollmentsTableView: UITableView!
    var viewModel = EnrollmentsViewModel.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = StaticData.AppStrings.enrollments
        registerTableviewCells()
    }
    
    func getEnrollmentVC() -> UIViewController {
        return UIStoryboard.init(name: StaticData.Identifiers.mainStoryboard, bundle: Bundle.main).instantiateViewController(withIdentifier: StaticData.Identifiers.enrollmentListViewController) as! EnrollmentListViewController
    }
    
    func registerTableviewCells() {
        enrollmentsTableView.register(UINib(nibName: StaticData.Identifiers.courseListTableViewCell, bundle: nil),
                                      forCellReuseIdentifier: StaticData.Identifiers.courseListTableViewCell)
    }
    
}

extension EnrollmentListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return viewModel.enrollmentsArr.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StaticData.Identifiers.courseListTableViewCell,
                                                 for: indexPath) as! CourseListTableViewCell
        cell.setUpCell(course: (viewModel.enrollmentsArr[indexPath.row]))
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        
        viewModel.selectCourse(showEnrollment: false,
                               course: viewModel.enrollmentsArr[indexPath.row],
                               completion: { vc in
            navigationController?.pushViewController(vc, animated: true)
        })
        
    }
    
}
