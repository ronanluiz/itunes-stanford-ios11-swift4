//
//  ViewController.swift
//  Concentration
//
//  Created by Ronan Luiz Araujo Eustaquio on 25/11/17.
//  Copyright © 2017 Rlz System. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipLabel: UILabel!
    
    var flipCount = 0 {
        didSet {
            flipLabel.text = "Flips: \(flipCount)"
        }
    }
    var emojis = ["👻", "🎃", "👻", "🎃"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojis[cardNumber], on: sender)
        }
    }
    
    fileprivate func flipCard(withEmoji emoji: String, on button: UIButton){
        var background: UIColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        var title = emoji
        if button.currentTitle == emoji {
            background = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
            title = ""
        }
        
        button.setTitle(title, for: .normal)
        button.backgroundColor = background
    }
}

