//
//  ViewController.swift
//  WarApp
//
//  Created by Hashim Jacobs on 12/29/18.
//  Copyright © 2018 Synthrism. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var leftScore = 0, rightScore = 0
    
    
    /* Card Images */
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    /* End Card Images */
    
    /* Score Labels */
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    /* End Score Labels */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }
    
    /* Respond to deal button tap */
    @IBAction func dealTapped(_ sender: Any) {
        
        // Generate random number between 2 and 13
        let leftRandomNumber = arc4random_uniform(13)+2
        
        let rightRandomNumber = arc4random_uniform(13)+2
        // End immutable variables
        
        // Set left card image file with respect to randomly generated number
        leftImageView.image = UIImage(named: "card\(leftRandomNumber)")
        
        // Set right card image file with respect to randomly generated number
        rightImageView.image = UIImage(named: "card\(rightRandomNumber)")
        
        compareCards(leftRandomNumber, rightRandomNumber)
    }
    
    /* Compare numbers */
    func compareCards(_ leftCard:UInt32, _ rightCard:UInt32){
        if leftCard > rightCard {
            // Update left score
            leftScore += 1
            
            // Update left score view
            leftScoreLabel.text = String(leftScore)
        }
        else if leftCard < rightCard {
            // Update right score
            rightScore += 1
            
            // Update right score label
            rightScoreLabel.text = String(rightScore)
        }
            
        else {
            
        }
    }
    
}

