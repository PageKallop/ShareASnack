//
//  LogInViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/11/21.
//

import UIKit
import Firebase
import FirebaseAuth

class LogInViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()


        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        //gets user from database 
         let email = userNameTextField.text!
         let password = passwordTextField.text!
        
        Firestore.firestore().collection("users").whereField("email", isEqualTo: email).getDocuments { (QuerySnapshot, error) in
            if let err = error {
                print("error signing in user")
            } else {
                for document in QuerySnapshot!.documents {
                    self.performSegue(withIdentifier: "ToMainScreen", sender: self)
                }
            }
        }
          
                   
        
            
    }

}
