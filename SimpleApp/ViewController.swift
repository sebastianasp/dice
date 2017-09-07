//
//  ViewController.swift
//  SimpleApp
//
//  Created by Sebastian Asp on 2017-09-06.
//  Copyright © 2017 Sebastian Asp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var leftImage: UIImageView!
    @IBOutlet weak var rightImage: UIImageView!
    
    @IBOutlet weak var showResult: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    @IBAction func rollDiceButton(_ sender: Any) {
        
        let dice1 = arc4random_uniform(6) + 1
        let dice2 = arc4random_uniform(6) + 1
        
        leftImage.image = UIImage(named: "Dice\(dice1)")
        rightImage.image = UIImage(named: "Dice\(dice2)")
        
showResult.text = "\(dice1 + dice2)"

    }

}

