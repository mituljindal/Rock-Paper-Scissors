//
//  MatchViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Mitul Jindal on 23/07/17.
//  Copyright © 2017 mitul jindal. All rights reserved.
//

import UIKit

class MatchViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    @IBAction func rockButtonPressed(_ sender: Any) {
        
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
        
        controller.result = 0
        controller.computerResult = Int(arc4random_uniform(3))
        
        self.present(controller, animated: true, completion: nil)
    }

    @IBAction func paperButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "code", sender: self)
    }

}

