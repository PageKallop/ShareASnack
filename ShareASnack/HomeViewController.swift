//
//  ViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/8/21.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {

   
    @IBOutlet weak var horizontalCellView: UICollectionView!
    
    @IBOutlet weak var mainTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        horizontalCellView.delegate = self
        horizontalCellView.dataSource = self
        
        mainTableView.delegate = self
        mainTableView.dataSource = self
        
        mainTableView.register(UINib(nibName: "MainTableViewCell", bundle: nil), forCellReuseIdentifier: "MainCell")
        
        
        
    }
    
    //MARK: - CollectionView Delegate Methods
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 10
       
       }
     
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = horizontalCellView.dequeueReusableCell(withReuseIdentifier: "TopCell", for: indexPath) as! TopCollectionViewCell
        
    
       
        
        cell.backgroundColor = UIColor.black
        
        cell.layer.cornerRadius = 25.0
        cell.layer.borderWidth = 5.0
        cell.layer.borderColor = CGColor.init(gray: 2.0, alpha: 1.0)
        
        return cell
        
        
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




