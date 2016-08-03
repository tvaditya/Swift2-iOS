//
//  ViewController.swift
//  Finger Guessing
//
//  Created by aditya on 7/19/16.
//  Copyright © 2016 tvaditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func guess(sender: AnyObject) {
        
        let fingerGuess = String(arc4random_uniform(6))
        print(fingerGuess) //testing reason, take it out later
        
        if fingerGuess == userGuessTextField.text {
           resultLabel.text = "You're right, it was " + fingerGuess
            
        } else {
            
                resultLabel.text = "You'r wrong it was " + fingerGuess
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

