//
//  ViewController.swift
//  StopWatch
//
//  Created by aditya on 8/2/16.
//  Copyright © 2016 tvaditya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = NSTimer()
    var time = 0.0

    @IBOutlet var timerLabel: UILabel!
    
    func incrementTime(){
        time = time + 0.1
        timerLabel.text = String(time)
        //timerLabel = "\(time)"
        //also casts it to string
    }
    
    @IBAction func btnPlay(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("incrementTime"), userInfo: nil, repeats: true)
    }
    
    @IBAction func btnPause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func btnStop(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerLabel.text="0.0"
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

