//
//  tableViewController.swift
//  Mixer
//
//  Created by Devansh Yerpude on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit
import Firebase

class tableViewController: UIViewController {
    
    let db = Firestore.firestore().collection("questions")
    var questions = [NSDictionary?]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        db.getDocuments() {
        (querySnapshot, err) in
            
            for document in querySnapshot!.documents {
                print(document.get("questions"))
            }
            
        }
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}