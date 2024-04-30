//
//  CourseListViewController.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import UIKit

class CourseListViewController: UIViewController {
    
    @IBOutlet weak var courseListTableView: UITableView!
    let viewModel = CourseListViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableviewCells()
        setUpViewController()
        viewModel.getCourseList()
    }
    
    func setUpViewController() {
        self.title = StaticData.AppStrings.courseList
        
        let profileBarButton = UIBarButtonItem(image: UIImage(systemName: "person.crop.circle.fill"),
                                               style: .plain,
                                               target: self,
                                               action: #selector(goToProfileViewController))
        profileBarButton.tintColor = .black
        navigationItem.rightBarButtonItems = [profileBarButton]
    }
    
    @objc func goToProfileViewController() {
        let vc = ProfileViewController().getProfileVC()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func registerTableviewCells() {
        courseListTableView.register(UINib(nibName: StaticData.Identifiers.courseListTableViewCell, bundle: nil),
                                     forCellReuseIdentifier: StaticData.Identifiers.courseListTableViewCell)
    }
    
}
extension CourseListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, 
                   numberOfRowsInSection section: Int) -> Int {
        return viewModel.coursesArr.count
    }
    
    func tableView(_ tableView: UITableView, 
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StaticData.Identifiers.courseListTableViewCell, 
                                                 for: indexPath) as! CourseListTableViewCell
        cell.setUpCell(course: viewModel.coursesArr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, 
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, 
                   didSelectRowAt indexPath: IndexPath) {
        viewModel.selectCourse(showEnrollment: true,
                               course: viewModel.coursesArr[indexPath.row],
                               completion: { vc in
            navigationController?.pushViewController(vc, animated: true)
        })
    }
    
}
