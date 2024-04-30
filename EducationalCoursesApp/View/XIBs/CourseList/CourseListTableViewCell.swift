//
//  CourseListTableViewCell.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 27/04/24.
//

import UIKit

class CourseListTableViewCell: UITableViewCell {

    @IBOutlet weak var instructorNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setUpCell(course: CourseModel, showAccesory: Bool = true) {
        self.titleLabel.text = course.courseTitle
        self.descriptionLabel.text = course.courseDescription
        self.instructorNameLabel.text = course.instructorName
        self.accessoryType = showAccesory ? .disclosureIndicator : .none
       
        //set accessibility identifier for UI Test purpose
        self.accessibilityIdentifier = StaticData.Identifiers.courseListTableViewCell + "-\(course.courseTitle)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
