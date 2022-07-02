//
//  ViewController.swift
//  App3x 4 Xylophone
//
//  Created by Marwan Elbahnasawy on 21/05/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        play(sound: (sender.titleLabel!.text!))
    }
    
    func play(sound: String){
        let url = Bundle.main.url(forResource: sound, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
}

