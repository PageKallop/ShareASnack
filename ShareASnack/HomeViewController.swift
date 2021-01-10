//
//  ViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/8/21.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {

    var top = ["1","1","1",]
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
        
       
        return top.count
       }
     
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = horizontalCellView.dequeueReusableCell(withReuseIdentifier: "TopCell", for: indexPath)
       
        
//        horizontalCellView.backgroundColor = UIColor.black
        
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




