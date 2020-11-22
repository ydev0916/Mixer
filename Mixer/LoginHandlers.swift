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
    picker.allowsEditing = true
        present(picker,animated:true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: AnyObject]) {
        
        var selectedImageFromPicker : UIImage?
        
        if let editedImage =
        info["UIImagePickerControllerEditedImage"] as? UIImage
        {
           selectedImageFromPicker = editedImage
        }
        
    else if let originalImage =
        info["UIImagePickerControllerOriginalImage"] as? UIImage
        {
            selectedImageFromPicker = originalImage
            
        }
        
        imageView.image = selectedImageFromPicker 
        
        dismiss(animated: true, completion: nil)
    }
    
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    
}
