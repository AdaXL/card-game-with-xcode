//
//  ViewController.swift
//  WarApp
//
//  Created by 李想 on 4/12/18.
//  Copyright © 2018 XL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        // randomize two numbers
        let leftRandomNumer = arc4random_uniform(13) + 2
        
        let rightRandomNumber = arc4random_uniform(13) + 2
        
        //change image view
        leftImageView.image = UIImage(named: "card\(leftRandomNumer)")
        
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        //compare number
        if leftRandomNumer > rightRandomNumber {
            //update score
            leftScore += 1
            
            //update label
            leftScoreLabel.text = String(leftScore)
        } else if leftRandomNumer < rightRandomNumber{
            //update score
            rightScore += 1
            
            //update label
            rightScoreLabel.text = String(rightScore)
        }
    }
    


}

