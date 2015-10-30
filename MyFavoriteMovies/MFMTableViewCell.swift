//
//  MFMTableViewCell.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 10/30/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//

import UIKit

class MFMTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieUrl: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    let CORNER_RADIUS:CGFloat = 5
    
    override func awakeFromNib() {
        super.awakeFromNib()
        movieImage.layer.cornerRadius = CORNER_RADIUS
        movieImage.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
