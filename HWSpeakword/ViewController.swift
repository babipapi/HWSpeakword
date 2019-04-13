//
//  ViewController.swift
//  HWSpeakword
//
//  Created by Daniel on 2019/4/13.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var wordTextField: UITextField!
    @IBOutlet weak var toneSlider: UISlider!
    @IBOutlet weak var speedSlider: UISlider!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func speakButtom(_ sender: Any) {
        let word = AVSpeechUtterance(string: wordTextField.text!)
        let voice = AVSpeechSynthesizer()
        word.pitchMultiplier = toneSlider.value
        word.rate = speedSlider.value
        voice.speak(word)
    }
    
    @IBAction func toneAction(_ sender: Any) {
        
    }
    
    @IBAction func speedAction(_ sender: Any) {
        
    }
}

