//
//  tableViewController.swift
//  Mixer
//
//  Created by Devansh Yerpude on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class tableViewController: UIViewController {
    
    let userID = Auth.auth().currentUser?.uid
    
    @IBOutlet weak var bookArray: UITableView!
    var questions = [NSDictionary?]()
    var ref = Database.database().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.ref.child("questions").queryOrdered(byChild: "userID").observe(.childAdded) { (snapshot) in
            self.questions.append(snapshot.value as? NSDictionary)
            }
        self.bookArray.insertRows(at: [IndexPath(row:self.questions.count-1,section:0)], with: UITableView.RowAnimation.automatic)
    }
        func numberOfSections(in tableView: UITableView) -> Int {
       // #warning Incomplete implementation, return the number of sections
       return 1
   }
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

//sets the values for the cell, including author, title, and the title cover for image.
    let book : NSDictionary
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! surveyTableViewCell

    let string = book["questions"] as? String
    
    cell.questions.text = string
    
    return cell
    
    }
    
    @IBAction func submit(_ sender: UIButton) {
      
        var counter = 0
        
        for cell in bookArray.visibleCells {
            
        let curr = cell as! surveyTableViewCell
            
            ref.child("users").child(userID!).setValue([counter : curr.answers.text])
            
        counter = counter + 1
        }

      
    }


}


    
