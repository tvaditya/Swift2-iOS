//
//  ViewController.swift
//  X-Tables
//
//  Created by aditya on 8/2/16.
//  Copyright © 2016 tvaditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    
    @IBOutlet var table: UITableView!
    
    @IBAction func sliderMoves(sender: AnyObject) {
        
       table.reloadData()
        
    }
    
    
    @IBOutlet var sliderValue: UISlider!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        let xTable = Int(sliderValue.value*20)
        cell.textLabel?.text = String(xTable*(indexPath.row+1))
        return cell
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

