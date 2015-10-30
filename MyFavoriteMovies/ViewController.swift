//
//  ViewController.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 10/30/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        fetchAndSetResults()
        tableView.reloadData() 
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellId = "Cell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellId, forIndexPath: indexPath) as! MFMTableViewCell
        
        cell.configureCell(movies[indexPath.row])
        
        return cell
    }
    
    func fetchAndSetResults() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let fetchRequest = NSFetchRequest(entityName: "Movie")
        
        do {
            let results = try context.executeFetchRequest(fetchRequest)
            movies = results as! [Movie]
        } catch let err as NSError {
            print(err.debugDescription)
        }
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
}

