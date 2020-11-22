//
//  loginViewController.swift
//  Mixer
//
//  Created by Devansh Yerpude on 11/21/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit


class loginViewController: UIViewController {
    
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var title = ""
    var desc = ""
    var img = succ.jpg
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func login(_ sender: UIButton) {
        
        if(email.text != "" && password.text != ""){
            print(email.text, password.text)
            Auth.auth().signIn(withEmail: email.text!, password: password.text!) { (user, error) in
                if user != nil {
                    self.performSegue(withIdentifier: "loginSeg", sender: self)
                }
                    
                else {
                    title = "Error"
                    desc = "You have entered the wrong username or password. Please try again. If you've forgotten your password, please send an email to us at: iLibrary@nhs.org"
                    let popup = PopupDialog(title: title, message: desc, image: image)
                    self.present(popup, animated: true, completion: nil)
                }
            }
        }
}

    @IBAction func createAcc(_ sender: UIButton) {
        
        if(email.text != "" && password.text != ""){
                  
                  Auth.auth().createUser(withEmail: email.text!, password: password.text!) { (user, error) in
                      
                      if user != nil {
                          
                          title = "Success"
                          desc = "You created account, please login"
                          let popup = PopupDialog(title: title, message: desc, image: image)
                          self.present(popup, animated: true, completion: nil)
                          
                      }
                  }
                 
              }
        
        
    }
    
}

