//
//  ViewController.swift
//  Speech
//
//  Created by Maahi on 30/04/17.
//  Copyright © 2017 Maahi. All rights reserved.
//

import UIKit
import Speech
import AVFoundation


//https://code.tutsplus.com/tutorials/create-a-text-to-speech-app-with-swift--cms-22229


class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func txtToSpeech(_ sender: AnyObject) {
        
        myUtterance = AVSpeechUtterance(string: textView.text)
        myUtterance.rate = 0.3
        synth.speak(myUtterance)
        
    }
    
   
    
    
}

