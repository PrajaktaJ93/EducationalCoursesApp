//
//  GenericTableViewCell.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import UIKit

class GenericTableViewCell: UITableViewCell {

    @IBOutlet weak var genericLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUpCellForProfile(profile: Profile) {
        genericLabel.text = profile.functionality.get()
        self.backgroundColor = profile.color
    }
}
