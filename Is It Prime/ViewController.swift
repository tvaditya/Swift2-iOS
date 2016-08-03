//
//  ViewController.swift
//  Is It Prime
//
//  Created by aditya on 7/19/16.
//  Copyright © 2016 tvaditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if  let num = Int(numTextField.text!) {
        
            var isPrime = true
        
            if num == 1{
            
                isPrime = false
            }
        
            if num != 2 && num != 1 {
            
                for  var i = 2; i < num; i += 1 {
                
                    if num % i == 0 {
                    
                        isPrime = false
                    }
                }
            }
        
            if isPrime {
                
                resultLabel.text = "\(num) is prime!"
                
            } else {
                
                resultLabel.text = "\(num) is not prime."
            }
        } else {
            
            resultLabel.text = "Please enter a whole number"
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

