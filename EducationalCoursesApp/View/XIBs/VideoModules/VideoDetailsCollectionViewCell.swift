//
//  VideoDetailsCollectionViewCell.swift
//  EducationalCoursesApp
//
//  Created by Prajakta Jadhav on 29/04/24.
//

import UIKit

class VideoDetailsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var playVideoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!
    @IBOutlet weak var videoThumbnailImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setUpCell(with video: VideoModel) {
        self.videoTitleLabel.text = video.videoName
        Task {
            
            self.videoThumbnailImageView.image =  UIImage(named: video.videoThumbnail)
        }
    }

}
