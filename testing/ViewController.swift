//
//  ViewController.swift
//  testing
//
//  Created by t450sMAC on 2019/2/22.
//  Copyright © 2019 t450sMAC. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {
    var musicButtom:AVAudioPlayer=AVAudioPlayer()
    @IBOutlet weak var imageOut: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let musicFile=Bundle.main.path(forResource: "sound01", ofType: ".mp3")
        do {
        try musicButtom = AVAudioPlayer(contentsOf : URL(fileURLWithPath: musicFile!))
        }
        catch {
            print(error)
        }
    }
    
    
    @IBAction func playallau(_ sender: Any) {
        musicButtom.play()
    }
    @IBAction func imageSwitch(_ sender: Any) {
    }
    
}

