//
//  LogInViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/11/21.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInButtonPressed(_ sender: UIButton) {
        //takes user to main screen
        self.performSegue(withIdentifier: "ToMainScreen", sender: self)
        
        
    }
    

}
