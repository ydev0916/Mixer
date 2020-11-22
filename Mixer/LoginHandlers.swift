//
//  LoginHandlers.swift
//  Mixer
//
//  Created by tharuni on 11/22/20.
//  Copyright © 2020 Devansh Yerpude. All rights reserved.
//

import Foundation
import UIKit

extension transViewController {
    
@objc func handleSelectorProfileImageView() {
        
        let picker = UIImagePickerController()
        
        picker.delegate = self
        
        present(picker,animated:true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
        
        var selectedImageFromPicker: UIImage?
        
        selectedImageFromPicker = info["UIImagePickerControllerOriginalImage"] as? UIImage

        imageView.image = selectedImageFromPicker
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}
