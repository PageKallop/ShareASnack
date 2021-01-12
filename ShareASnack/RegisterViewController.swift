//
//  RegisterViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/11/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    

    var docRef : DocumentReference!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        //checks that imputs are filled
        if emailTextField.text == "", passwordTextField.text == "" {
           
        print("field has no imput")
       
    } else {
        
        //creating user database
        let dataToSave : [String : Any] = [
        
            "email" : emailTextField.text!,
            "password": passwordTextField.text!
        ]
        print("set ref")
        docRef = Firestore.firestore().document("users/\(UUID().uuidString)")
        docRef.setData(dataToSave) { (error) in
            if let error = error {
                print("error = \(error)")
            } else {
                self.performSegue(withIdentifier: "RegisteredToMainScreen", sender: self)
            }
        }
    }
}
    
    
    

}
