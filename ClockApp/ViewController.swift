//
//  ViewController.swift
//  ClockApp
//
//  Created by SEZAX development on 11/03/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var clockLabel: UILabel!
    // Prepare Timer
    var timer: Timer!
    
    // At first, how?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // iPhone, what time is it now?
        let now = Date()
        // Prepare Date formatter
        let formatter = DateFormatter()
        // Define Date format
        formatter.dateFormat = "dd/MM/yyyy hh:mm:ss"
        // Let's translate
        let nowString = formatter.string(from: now)
        // Get value into label
        self.clockLabel.text = nowString
        
        // Set timer
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateClock), userInfo: nil, repeats: true)
        
    }
    
    // When updateClock is called
    @objc func updateClock() {
        // iPhone, what time is it now?
        let now = Date()
        // Prepare Date formatter
        let formatter = DateFormatter()
        // Define Date format
        formatter.dateFormat = "dd/MM/yyyy hh:mm:ss"
        // Let's translate
        let nowString = formatter.string(from: now)
        // Get value into label
        self.clockLabel.text = nowString
    }
    
    @IBAction func tapStartButton(_ sender: Any) {
        // copy "set timer"
        self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateClock), userInfo: nil, repeats: true)
    }
    
    @IBAction func tapStopButton(_ sender: Any) {
        // Stop clock
        self.timer.invalidate()
    }
    
}

