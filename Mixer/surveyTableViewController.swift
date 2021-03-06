//
//  surveyTableViewController.swift
//  Mixer
//
//  Created by Farhan Juneja on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class surveyTableViewController: UITableViewController {

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
        
        self.bookArray.insertRows(at: [IndexPath(row:self.questions.count-1,section:0)], with: UITableView.RowAnimation.automatic)
    }
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return questions.count
    }
    
    
    
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    //sets the values for the cell, including author, title, and the title cover for image.
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! surveyTableViewCell

        let book : NSDictionary
        book = self.questions[indexPath.row]!
        
        cell.questions.text = book["question"] as? String
        
        //print(book["question"])
        
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
    
    
    

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
