//
//  ViewController.swift
//  Dicee Game
//
//  Created by Kafkas Baranseli on 13/04/2019.
//  Copyright © 2019 Baranseli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        updateDiceImages()
        
    }

    @IBAction func rollBtnPressed(_ sender: UIButton) {
       
        updateDiceImages()
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) // between 0 to 7
        randomDiceIndex2 = Int(arc4random_uniform(6)) // between 0 to 7
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

