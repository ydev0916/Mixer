//
//  loginViewController.swift
//  Mixer
//
//  Created by Devansh Yerpude on 11/21/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import PopupDialog
import FirebaseDatabase

class loginViewController: UIViewController {
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var title1 = ""
    var desc1 = ""
    var img = #imageLiteral(resourceName: "succ.jpg")

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func login(_ sender: UIButton) {
        
        if(email.text != "" && password.text != ""){
            Auth.auth().signIn(withEmail: email.text!, password: password.text!) { [self] (user, error) in
                if user != nil {
                    self.performSegue(withIdentifier: "loginSeg", sender: self)
                }
                    
                else {
                    self.title1 = "Error"
                    self.desc1 = "Please enter correct username/password"
                    self.img = #imageLiteral(resourceName: "sad")
                    let popup = PopupDialog(title: self.title1, message: self.desc1, image: self.img)
                    let button = DefaultButton(title: "OK") {
                        self.performSegue(withIdentifier: "loginSeg", sender: self)
                    }
                    
                    popup.addButton(button)
                    self.present(popup, animated: true, completion: nil)
                }
            }
        }
}

    @IBAction func createAcc(_ sender: UIButton) {
        
        if(email.text != "" && password.text != ""){
                  
                  Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, error) in
                      
                      if user != nil {
                        
                        Auth.auth().signIn(withEmail: self.email.text!, password: self.password.text!) { [self] (user, error) in
                        if user != nil {
                            
                            let userID = Auth.auth().currentUser?.uid
                            let ref = Database.database().reference()
                            ref.child("users").child(userID!).child("name").setValue(self.name.text)
                                
                            
                            self.performSegue(withIdentifier: "createAccSeg", sender: self)
                        }
                        
                        }
                    }
                    
                      else {
                        self.title1 = "Error"
                        self.desc1 = "Please enter a valid username/pass"
                        self.img = #imageLiteral(resourceName: "sad")
                        let popup = PopupDialog(title: self.title1, message: self.desc1, image: self.img)
                        self.present(popup, animated: true, completion: nil)
                        
                    }
            }
        }
    }
}
            
