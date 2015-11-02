//
//  MFMDetailsViewController.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 11/2/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//

import UIKit

class MFMDetailsViewController: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieUrlBtn: UIButton!
    @IBOutlet weak var plotDescription: UILabel!
    @IBOutlet weak var whyDoILikeIt: UILabel!
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        movieImage.image = movie.getImage()
        movieTitle.text = movie.title
        movieUrlBtn.setTitle(movie.url, forState: .Normal)
        plotDescription.text = movie.plotdescrioption
        whyDoILikeIt.text = movie.descriptionTxt
    }
    
    @IBAction func onUrlTapped(sender: UIButton) {
        let url = NSURL(string: movie.url!)
        if UIApplication.sharedApplication().canOpenURL(url!) {
            UIApplication.sharedApplication().openURL(url!)
        }
    }
}
