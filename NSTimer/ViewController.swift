//
//  ViewController.swift
//  NSTimer
//
//  Created by Daniele Lanzetta on 07.04.16.
//  Copyright © 2016 Daniele Lanzetta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    
    var time = 0
    
    @IBOutlet weak var timeLabel: UILabel!
   
    func result() {
        time += 1
     timeLabel.text = "\(time)"
    }

    
    
    
    
    @IBAction func startBtn(_ sender: AnyObject) {
       timer = Timer.scheduledTimer(timeInterval: 1, target: self,selector: #selector(ViewController.result), userInfo: nil ,repeats: true)
        
        
    }
   
    
    @IBAction func resetBtn(_ sender: AnyObject) {
        resetOnZero()
    }
    
    
    
    @IBAction func pauseBtn(_ sender: AnyObject) {
        timer.invalidate()
    }
    
    
    func resetOnZero() {
        timeLabel.text = "0"
        time = 0
        timer.invalidate()
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

