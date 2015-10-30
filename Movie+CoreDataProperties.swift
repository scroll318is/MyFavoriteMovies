//
//  Movie+CoreDataProperties.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 10/30/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var title: String?
    @NSManaged var descriptionTxt: String?
    @NSManaged var movieUrl: String?
    @NSManaged var movieImage: NSData?
    @NSManaged var plotdescrioption: String?

}
