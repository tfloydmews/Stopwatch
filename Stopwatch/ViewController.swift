//
//  ViewController.swift
//  Stopwatch
//
//  Created by Taylor on 2/14/17.
//  Copyright © 2017 Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var elapsedTime: UILabel!
    var time = 0
    var displayValue = 0
    var timer = Timer()
    var timerRunning = false
    @IBAction func startTimer(_ sender: UIBarButtonItem) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.increment), userInfo: nil, repeats: true)
        timerRunning = true
    }
    
    func increment() {
        time += 1
        elapsedTime!.text = "\(time)"
    }
    
    @IBAction func stopTimer(_ sender: UIBarButtonItem) {
        if timerRunning {
            timer.invalidate()
            timerRunning = false
        }
        else {
            return
        }
    }
    
    @IBAction func resetTimer(_ sender: UIBarButtonItem) {
        if timerRunning {
            timer.invalidate()
            time = 0
            elapsedTime!.text = "0"
        }
        else{
            time = 0
            elapsedTime!.text = "0"
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

