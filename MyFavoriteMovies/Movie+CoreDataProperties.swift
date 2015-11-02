//
//  Movie+CoreDataProperties.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 11/2/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Movie {

    @NSManaged var descriptionTxt: String?
    @NSManaged var coverImage: NSData?
    @NSManaged var url: String?
    @NSManaged var plotdescrioption: String?
    @NSManaged var title: String?

}
