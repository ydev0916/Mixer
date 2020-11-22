//
//  imgGameViewController.swift
//  Mixer
//
//  Created by tharuni on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import UIKit

class imgGameViewController: UIViewController {

    @IBAction func foodGenre(_ sender: Any) {
        self.performSegue(withIdentifier: "imgGameViewController", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

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
