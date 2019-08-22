//
//  ViewController.swift
//  GoodEatins-V2
//
//  Created by Muhammad El Zedy on 8/21/19.
//  Copyright © 2019 ZozShark. All rights reserved.
//

import UIKit

class StartVC: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var goBtn: UIButton!
    @IBOutlet weak var findLabel: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        titleLabel.alpha = 0
        bgImage.alpha = 0
        descLabel.alpha = 0
        goBtn.alpha = 0
        findLabel.alpha = 0
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIView.animate(withDuration: 1, animations: {
            self.bgImage.alpha = 0.7
        }) { (true) in
           self.showtitle()
        }
    }
    
    func showtitle(){
        
        UIView.animate(withDuration: 1, animations: {
            self.titleLabel.alpha = 1
        }, completion: { (true) in
            self.showDescription()
        })
    }
    
    func showDescription(){
        
        UIView.animate(withDuration: 1, animations: {
            self.descLabel.alpha = 1
        }) { (true) in
            self.showBtnAndText()
        }
    }
    
    func showBtnAndText(){
        UIView.animate(withDuration: 1) {
            self.goBtn.alpha = 1
            self.findLabel.alpha = 1
            self.bgImage.alpha = 1

        }
    }

}

