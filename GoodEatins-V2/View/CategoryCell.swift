//
//  CategoryCell.swift
//  GoodEatins-V2
//
//  Created by Muhammad El Zedy on 8/21/19.
//  Copyright © 2019 ZozShark. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        categoryImg.layer.cornerRadius = 10
    }
    
    func configureCell(category: FoodCategory){
        categoryImg.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
