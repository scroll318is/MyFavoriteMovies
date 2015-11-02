//
//  Movie.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 11/2/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//

import UIKit
import CoreData

@objc(Movie)
class Movie: NSManagedObject {

    func setImage(image: UIImage) {
        let data = UIImagePNGRepresentation(image)
        self.coverImage = data
    }
    
    func getImage() -> UIImage? {
        if self.coverImage != nil {
            if let image = UIImage(data: self.coverImage!) {
                return image
            }
        }
        return nil
    }

}
