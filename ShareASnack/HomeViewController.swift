//
//  ViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/8/21.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

   
    
    
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true
        
    
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
      
        
        mainTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCell")
        
        
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.navigationItem.hidesBackButton = true
    }
    
  
    
    
    
    //MARK: - tableView Delegate Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = mainTableView.dequeueReusableCell(withIdentifier: "MainCell", for: indexPath) as! MainTableViewCell
    
     
        
        return cell 
    }
    
}




