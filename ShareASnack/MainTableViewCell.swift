//
//  MainTableViewCell.swift
//  ShareASnack
//
//  Created by Page Kallop on 1/9/21.
//

import UIKit

class MainTableViewCell: UITableViewCell {

    @IBOutlet weak var foodImage: UIImageView!
    
    @IBOutlet weak var recipeLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        

        
  
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func likeButton(_ sender: UIButton) {
        //toggles button between two images
        sender.isSelected.toggle()
        sender.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        
    
        
    }
    
    @IBAction func sendButton(_ sender: UIButton) {
    }
    
    
}
