//
//  ResulViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Mitul Jindal on 23/07/17.
//  Copyright © 2017 mitul jindal. All rights reserved.
//
//This is the final view

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel! // creating label instance
    
    @IBOutlet weak var imageView: UIImageView! // creating imageview instance
    
    var choice: Int? // variable for player choice
    var computerChoice: Int? //variable for computer choice
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        compileResult(self.choice!, self.computerChoice!) // changing view with result
    }
    
    func compileResult(_ player: Int, _ computer: Int) {
        var final: Int = -1 // default value (to remove error)
        switch (player, computer) {
        case (0,0), (1,1), (2,2): // tie result
            imageView.image = #imageLiteral(resourceName: "itsATie")
            resultLabel.text = "Try Again!"
            return
        case (0,1), (1,0): // paper wins
            imageView.image = #imageLiteral(resourceName: "PaperCoversRock")
            final = 1
        case (1,2), (2,1): // scissors win
            imageView.image = #imageLiteral(resourceName: "ScissorsCutPaper")
            final = 2
        case (0,2), (2,0): // rock wins
            imageView.image = #imageLiteral(resourceName: "RockCrushesScissors")
            final = 0
        default: // in case of problem
            print("problem")
            return
        }
        
        if player == final { // if player wins
            resultLabel.text = "Hurray! You win"
        } else { // if player loses
            resultLabel.text = "Alas, you lost!"
        }
    }
    
    @IBAction func playAgain(_ sender: Any) { // dismissing the result
        self.dismiss(animated: true, completion: nil)
    }
    
}
