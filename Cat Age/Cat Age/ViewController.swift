//
//  ViewController.swift
//  Cat Age
//
//  Created by aditya on 7/17/16.
//  Copyright © 2016 tvaditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var catAgeTextField: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        var catAge = Int(catAgeTextField.text!)!
        
        catAge = catAge*7
        resultLabel.text = "Your cat is \(catAge) cat year!"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

