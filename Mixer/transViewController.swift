//
//  transViewController.swift
//  Mixer
//
//  Created by tharuni on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit

class transViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleSelectorProfileImageView)))
        imageView.isUserInteractionEnabled = true
        
        // Do any additional setup after loading the view.
    }
    

    @IBAction func submit(_ sender: UIButton) {
        
        
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
