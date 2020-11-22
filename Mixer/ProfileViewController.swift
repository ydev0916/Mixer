//
//  ProfileViewController.swift
//  Mixer
//
//  Created by Farhan Juneja on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
    @IBOutlet weak var pfpOut: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        pfpOut.layer.masksToBounds = true
            pfpOut.layer.cornerRadius = pfpOut.bounds.width / 2
        
      
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
