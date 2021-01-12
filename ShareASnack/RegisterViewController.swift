//
//  RegisterViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/11/21.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    var email : String = ""
    var password : String = ""
    var docRef : DocumentReference!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerButtonPressed(_ sender: UIButton) {
        //creating user database 
        let dataToSave : [String : Any] = [
        
            "email" : email,
            "password": password
        ]
        
        docRef = Firestore.firestore().document("users/\(UUID().uuidString)")
             
    }
    

}
