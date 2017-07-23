//
//  ResulViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Mitul Jindal on 23/07/17.
//  Copyright © 2017 mitul jindal. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var result: Int?
    var computerResult: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        compileResult(self.result!, self.computerResult!)
    }
    
    func compileResult(_ player: Int, _ computer: Int) {
        var final: Int = 3
        switch (player, computer) {
        case (0,0):
            imageView.image = #imageLiteral(resourceName: "itsATie")
            resultLabel.text = "Try Again!"
            return
        case (0,1), (1,0):
            imageView.image = #imageLiteral(resourceName: "PaperCoversRock")
            final = 1
        case (1,2), (2,1):
            imageView.image = #imageLiteral(resourceName: "ScissorsCutPaper")
            final = 2
        default:
            imageView.image = #imageLiteral(resourceName: "RockCrushesScissors")
            final = 0
        }
        
        if player == final {
            resultLabel.text = "Hurray! You win"
        } else {
            resultLabel.text = "Alas, you lost!"
        }
    }
    
    
}
