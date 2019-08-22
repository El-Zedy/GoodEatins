//
//  RecipeCell.swift
//  GoodEatins-V2
//
//  Created by Muhammad El Zedy on 8/21/19.
//  Copyright © 2019 ZozShark. All rights reserved.
//

import UIKit

class RecipeCell: UICollectionViewCell {
    @IBOutlet weak var recipeImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        recipeImg.layer.cornerRadius = 10
    }
    
    func configureCell(recipe: Recipe){
        recipeImg.image = UIImage(named: recipe.imageName)
    }
        
}
