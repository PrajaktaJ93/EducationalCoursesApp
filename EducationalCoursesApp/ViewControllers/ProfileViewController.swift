//
//  ProfileViewController.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var profileTableView: UITableView!
    var profileModel = ProfileViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        registerTableviewCells()
    }
    
    func getProfileVC() -> UIViewController {
        return UIStoryboard.init(name: StaticData.Identifiers.mainStoryboard, bundle: Bundle.main).instantiateViewController(withIdentifier: StaticData.Identifiers.profileViewController) as! ProfileViewController
    }
    
    func registerTableviewCells() {
        profileTableView.register(UINib(nibName: StaticData.Identifiers.genericTableViewCell, bundle: nil),
                                  forCellReuseIdentifier: StaticData.Identifiers.genericTableViewCell)
        
    }
    
}
extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return profileModel.profileFunctionalitiesArr.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StaticData.Identifiers.genericTableViewCell,
                                                 for: indexPath) as! GenericTableViewCell
        cell.setUpCellForProfile(profile: profileModel.profileFunctionalitiesArr[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let vc = EnrollmentListViewController().getEnrollmentVC()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}
