//
//  ViewController.swift
//  dicee
//
//  Created by Joseph Sungpil Choi on 17/07/2018.
//  Copyright © 2018 Joseph Sungpil Choi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBAction func handleRoll(_ sender: UIButton) {
        rollDices()
    }
    
    private func rollDices() {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        print("randomDiceIndex1: \(randomDiceIndex1)")
        print("randomDiceIndex2: \(randomDiceIndex2)")
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1 + 1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2 + 1)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollDices()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

