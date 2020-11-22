//
//  quizViewController.swift
//  Mixer
//
//  Created by Devansh Yerpude on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit
import FirebaseDatabase



class quizViewController: UIViewController {

    
    @IBOutlet weak var question: UILabel!
    
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var score: UILabel!
    

    
    
    
    
        override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func pressed(_ sender: UIButton) {
    
    
    if sender.tag == 1 {
    
    
    }
    
    else if sender.tag == 2 {
        }
    
    else if sender.tag == 3 {
    }
    
    else if sender.tag == 4 {
        }
    
    
    }
    
    
    func updateQuestion() {
        
    
    
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
