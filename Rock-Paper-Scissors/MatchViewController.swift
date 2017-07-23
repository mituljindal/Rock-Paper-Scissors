//
//  MatchViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Mitul Jindal on 23/07/17.
//  Copyright © 2017 mitul jindal. All rights reserved.
//
// This is the first view

import UIKit

class MatchViewController: UIViewController {
    
    // For connecting data from this ViewController to the ResultViewController
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let controller = segue.destination as! ResultViewController // .destination stores the information of ResultViewController in controller
        
        if segue.identifier == "code" { // if paper is pressed
            controller.choice = 1
        } else if segue.identifier == "noCode" { // if scissors is pressed
            controller.choice = 2
        }
        
        controller.computerChoice = Int(arc4random_uniform(3)) // result for computer
    }

    @IBAction func rockButtonPressed(_ sender: Any) { // if rock is pressed
        
        let controller: ResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController // instantiating controller with ResultViewController
        
        controller.choice = 0
        controller.computerChoice = Int(arc4random_uniform(3)) // result for computer
        
        self.present(controller, animated: true, completion: nil) // presenting ResultViewController with code
    }

    @IBAction func paperButtonPressed(_ sender: Any) { // if paper is pressed
        
        performSegue(withIdentifier: "code", sender: self) // presenting ResultViewController with code and segue
    }

}

