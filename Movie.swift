//
//  Movie.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 10/30/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//

import UIKit
import CoreData

@objc(Movie)
class Movie: NSManagedObject {

    func setImage(image: UIImage) {
        let data = UIImagePNGRepresentation(image)
        self.movieImage = data
    }
    
    func getImage() -> UIImage? {
        if movieImage != nil {
            if let image = UIImage(data: movieImage!) {
                return image
            }
        }
        return nil
    }
}
