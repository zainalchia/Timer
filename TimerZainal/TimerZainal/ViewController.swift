//
//  ViewController.swift
//  TimerZainal
//
//  Created by Zainal Abidin Chia on 13/6/18.
//  Copyright © 2018 Zainal Abidin Chia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    
    var timer = Timer()
    var counter = 0.0
    var isRunning = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeLabel.text = "\(counter)"
        playButton.isEnabled = true
        pauseButton.isEnabled = false
    }
    
    @IBAction func resetButtonDidTouch(_ sender: Any) {
        timer.invalidate()
        isRunning = false
        counter = 0
        timeLabel.text = "\(counter)"
        
        playButton.isEnabled = true
        pauseButton.isEnabled = false
    }
    
    @IBAction func playButtonDidTouch(_ sender: Any) {
        if !isRunning {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.updateTimer), userInfo: nil, repeats: true)
            playButton.isEnabled = false
            pauseButton.isEnabled = true
            isRunning = true
        }
    }
    
    @IBAction func pauseButtonDidTouch(_ sender: Any) {
        playButton.isEnabled = true
        pauseButton.isEnabled = false
        
        timer.invalidate()
        isRunning = false
    }
    
    @objc func updateTimer() {
        counter += 0.1
        timeLabel.text = String(format: "%.1f", counter)
    }

}

