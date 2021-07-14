//
//  ViewController.swift
//  WarCardGame
//
//  Created by Gayane Avetisyan on 13.07.21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImage: UIImageView!
    
    @IBOutlet weak var tightImage: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightscore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        
        
    }


    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14)
        //print(leftNumber)
        
        let rightNumber = Int.random(in: 2...14)
        //print(rightNumber)
        
      
        
        
        leftImage.image = UIImage(named: "card\(leftNumber)")
        
        tightImage.image =  UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }



        else if leftNumber < rightNumber{
            
            rightscore += 1
            rightScoreLabel.text = String(rightscore)
        }
        
        else {
            
            //done
        }
        
        
        
    }
    
    
    
    
}

