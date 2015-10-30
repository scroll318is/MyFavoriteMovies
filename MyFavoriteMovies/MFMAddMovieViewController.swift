//
//  MFMAddMovieViewController.swift
//  MyFavoriteMovies
//
//  Created by Stoyan Yordanov Kostov on 10/30/15.
//  Copyright © 2015 com.kostov. All rights reserved.
//

import UIKit
import CoreData

class MFMAddMovieViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var titleTxtBox: UITextField!
    @IBOutlet weak var whyDoYouLikeItTxtBox: UITextField!
    @IBOutlet weak var descriptionTxtBox: UITextField!
    @IBOutlet weak var urlTxtBox: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var addImageBtn: UIButton!

    var imagePicker: UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker = UIImagePickerController()
        imagePicker.delegate = self
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        imageView.image = image
        addImageBtn.hidden = true
    }
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        addImageBtn.hidden = false
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onSaveTapped(sender: UIButton) {
        if titleTxtBox.text          != "" && titleTxtBox.text          != nil &&
           whyDoYouLikeItTxtBox.text != "" && whyDoYouLikeItTxtBox.text != nil &&
           descriptionTxtBox.text    != "" && descriptionTxtBox.text    != nil &&
           urlTxtBox.text            != "" && urlTxtBox.text            != nil
        {
            if imageView.image != UIImage(named: "default") {
                createMovie()
            }
        }
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func createMovie() {
        let app = UIApplication.sharedApplication().delegate as! AppDelegate
        let context = app.managedObjectContext
        let entity = NSEntityDescription.entityForName("Movie", inManagedObjectContext: context)
        let movie = Movie(entity: entity!, insertIntoManagedObjectContext: context)
        movie.movieUrl = urlTxtBox.text
        movie.title = titleTxtBox.text
        movie.setImage(imageView.image!)
        movie.descriptionTxt = whyDoYouLikeItTxtBox.text
        movie.plotdescrioption = descriptionTxtBox.text
        
        do {
            try context.save()
        } catch let error as NSError  {
            print("Could not save \(error), \(error.userInfo)")
        }
    }
    
    @IBAction func onCancelTapped(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onAddImageTapped(sender: UIButton) {
        presentViewController(imagePicker, animated: true, completion: nil)
    }

}
