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

class tableViewController: UIViewController{
    
    let userID = Auth.auth().currentUser?.uid
    
    @IBOutlet var bookArray: UITableView!
    var questions = [NSDictionary?]()
    var ref = Database.database().reference()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.ref.child("questions").observe(.childAdded) { (snapshot) in
            self.questions.append(snapshot.value as? NSDictionary)
        print(self.questions)
    }
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // 2
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions.count
    }
    
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

//sets the values for the cell, including author, title, and the title cover for image.
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! surveyTableViewCell

    let book : NSDictionary
    book = self.questions[indexPath.row]!
    
    cell.questions.text = book["question"] as? String
    
    print(book["question"])
    
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


    
