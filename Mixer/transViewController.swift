//
//  transViewController.swift
//  Mixer
//
//  Created by tharuni on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit
import FirebaseStorage
import FirebaseDatabase
import FirebaseAuth

class transViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    let userID = Auth.auth().currentUser?.uid
    var ref = Database.database().reference()
    var name = " "
    var email = " "
    var imagePicker = UIImagePickerController()

    @IBOutlet var imageView: UIImageView!
    
    @IBAction func submit(_ sender: UIButton) {
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                print("Button capture")

                imagePicker.delegate = self
                imagePicker.sourceType = .savedPhotosAlbum
                imagePicker.allowsEditing = false

                present(imagePicker, animated: true, completion: nil)
            }
    }
        
        
    func imagePickerController(picker: UIImagePickerController!, didFinishPickingImage image: UIImage!, editingInfo: NSDictionary!){
            self.dismiss(animated: true, completion: { () -> Void in

            })

          DispatchQueue.main.async {
            self.imageView.image = image
            self.imageView.setNeedsDisplay()
            }
        }

        

    override func viewDidLoad() {
            super.viewDidLoad()
            
 //           textView.layer.borderColor = UIColor.white.cgColor
 //           textView.layer.borderWidth = 2
            // Do any additional setup after loading the view, typically from a nib.
        }
        
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
      
        }
    
    @IBAction func done(_ sender: UIButton) {
    
    performSegue(withIdentifier: "tableSeg", sender: self)
    
    }
    

        //share with social medai found on phone
        

        @IBAction func takePhoto(_ sender: AnyObject) {
            //takes photo from inbuilt photo function, saves it and calls recognition function
            if UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera) {
                let imagePicker = UIImagePickerController()
                imagePicker.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
                imagePicker.sourceType = UIImagePickerController.SourceType.camera
                imagePicker.allowsEditing = false
                self.present(imagePicker, animated: true, completion: nil)
            }
            
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
            if let pickedImage = info["UIImagePickerControllerOriginalImage"] as? UIImage {
               
                DispatchQueue.main.async {
                    self.imageView.image = pickedImage
                    self.imageView.setNeedsDisplay()
                  }

               
            }
            picker.dismiss(animated: true, completion: nil)
    }
    
        override func touchesBegan(_ touches:Set<UITouch>, with event: UIEvent?){
            self.view.endEditing(true)
        }
        
}
        
    
  






        

