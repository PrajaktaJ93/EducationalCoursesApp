//
//  CourseDetailViewController.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import UIKit

class CourseDetailViewController: UIViewController {
    var enrollmentModel = EnrollmentsViewModel.shared
    
    @IBOutlet weak var enrollmentButton: UIButton!
    @IBOutlet weak var courseDetailTableView: UITableView!
    var course : CourseModel?
    var showEnrollmentButton = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        setUpCourseDetailVC()
    }
    
    func registerCells() {
        courseDetailTableView.register(UINib(nibName: StaticData.Identifiers.courseListTableViewCell, bundle: nil),
                                       forCellReuseIdentifier: StaticData.Identifiers.courseListTableViewCell)
        
        courseDetailTableView.register(UINib(nibName: StaticData.Identifiers.videoModulesTableViewCell, bundle: nil),
                                       forCellReuseIdentifier: StaticData.Identifiers.videoModulesTableViewCell)
    }
    
    func setUpCourseDetailVC() {
        self.title = StaticData.AppStrings.courseDetail
        enrollmentButton.setTitle(StaticData.AppStrings.enrollment, for: .normal)
        enrollmentButton.isHidden = !showEnrollmentButton
    }
    
    @IBAction func enrollmentBtnAction(_ sender: Any) {
        
        enrollmentModel.enrollForCourse(course: course!, completion: {
            self.navigationController?.popViewController(animated: true)
        })
        
    }
    
    func create(with course: CourseModel, showEnrollment: Bool) -> CourseDetailViewController {
        let view = UIStoryboard.init(name: StaticData.Identifiers.mainStoryboard, bundle: Bundle.main).instantiateViewController(withIdentifier: StaticData.Identifiers.courseDetailViewController) as! CourseDetailViewController
        view.course = course
        view.showEnrollmentButton = showEnrollment
        return view
    }
}

extension CourseDetailViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch  indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: StaticData.Identifiers.courseListTableViewCell, for: indexPath) as! CourseListTableViewCell
            cell.setUpCell(course: course!, showAccesory: false)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: StaticData.Identifiers.videoModulesTableViewCell, for: indexPath) as! VideoModulesTableViewCell
            cell.setUpCell(course: course!)
            return cell
        default:
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch  indexPath.row {
        case 0:
            return UITableView.automaticDimension
        case 1:
            return 300
        default:
            return UITableView.automaticDimension
        }
    }
    
}
