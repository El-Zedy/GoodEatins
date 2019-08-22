//
//  RecpiesSelectionVC.swift
//  GoodEatins-V2
//
//  Created by Muhammad El Zedy on 8/21/19.
//  Copyright © 2019 ZozShark. All rights reserved.
//

import UIKit

class RecpiesSelectionVC: UIViewController, UICollectionViewDelegate
, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    var selectedCategory: String!
    var recipies: [Recipe]!
    let data = DataSet()
    var recipeToPass: Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
        recipies = data.getRecipes(forCategoryTitle: selectedCategory)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recipecell", for: indexPath) as? RecipeCell{
            let recipe = recipies[indexPath.item]
            cell.configureCell(recipe: recipe)
            return cell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = view.bounds.width
        let cellDimenssion = (width / 2) - 15
        return CGSize(width: cellDimenssion, height: cellDimenssion)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        recipeToPass = recipies[indexPath.item]
        performSegue(withIdentifier: "toDetails", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailsVC = segue.destination as? DetailsVC{
            detailsVC.selectedRecipe = recipeToPass
        }
    }

}
