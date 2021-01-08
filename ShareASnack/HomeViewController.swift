//
//  ViewController.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/8/21.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    

    @IBOutlet weak var horizontalCellView: UICollectionView!
    
    @IBOutlet weak var verticalCellView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        horizontalCellView.delegate = self
        horizontalCellView.dataSource = self
        
        verticalCellView.delegate = self
        verticalCellView.dataSource = self
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.horizontalCellView {
            return 15
        }
       
            if collectionView == self.verticalCellView {
           
            return 15
                
            }
        return 5
       }
     
        
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
          
        
        
    }
    
    
    
    
}




