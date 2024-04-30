//
//  VideoModulesTableViewCell.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import UIKit

class VideoModulesTableViewCell: UITableViewCell {

    @IBOutlet weak var videoModulesLabel: UILabel!
    var course: CourseModel?
    @IBOutlet weak var videoDetailsCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setUpCell(course: CourseModel) {
        self.course = course
        self.videoModulesLabel.text = StaticData.AppStrings.videoModules
        registerCollectionViewCells()
    }
    
    private func registerCollectionViewCells() {
        videoDetailsCollectionView.register(UINib(nibName: StaticData.Identifiers.videoDetailsCollectionViewCell, bundle: nil),
                                            forCellWithReuseIdentifier: StaticData.Identifiers.videoDetailsCollectionViewCell)

    }
    
}
extension VideoModulesTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StaticData.Identifiers.videoDetailsCollectionViewCell, for: indexPath) as! VideoDetailsCollectionViewCell
        cell.setUpCell(with: course!.videoModules[indexPath.item])
        
        return cell

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return course?.videoModules.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}
extension VideoModulesTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.frame.width/2.5, height: 300)
    }
}
