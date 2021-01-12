//
//  ProflieViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/10/21.
//

import UIKit

class ProflieViewController: UIViewController {

    @IBOutlet weak var pickedPhoto: UIImageView!
    
    @IBOutlet weak var ingredientTextField: UITextView!
    
    @IBOutlet weak var directionTextField: UITextView!
    
    @IBOutlet weak var descriptionTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        descriptionTextField.borderStyle = .none

        
    }
    
    
 
    @IBAction func addPhotoPressed(_ sender: UIButton) {
        
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
 
    @IBAction func saveButtonPressed(_ sender: UIButton) {
    }
    
}
//MARK: - UIImage Delegate Methods
extension ProflieViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            pickedPhoto.image = image
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        picker.dismiss(animated: true, completion: nil)
    }
}
