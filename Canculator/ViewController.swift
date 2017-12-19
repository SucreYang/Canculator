//
//  ViewController.swift
//  Canculator
//
//  Created by 杨木木 on 2017/12/11.
//  Copyright © 2017年 杨木木. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    @IBOutlet weak var textAre: UILabel!
    @IBOutlet weak var ew: UIProgressView!
    var switchOnoff: Bool = true
    var huakuaiValue: Float = 0.51
    
    var theOne = 0
    
    @IBAction func addOne(_ sender: UIButton) {
        theOne += 1
        textAre.text = "\(theOne)"
    }
   
    @IBAction func switchValue(_ sender: UISwitch) {
        if sender.isOn {
            switchOnoff = sender.isOn
            getProgressValue(sender: huakuaiValue)
        } else {
            switchOnoff = false
            getProgressValue(sender: 0.0)
        }
    }
    
    @IBAction func huakuai(_ sender: UISlider) {
        let baifenbi = sender.value / sender.maximumValue * 100
        theOne = Int(baifenbi)
        textAre.text = "almost \(Int(baifenbi))%"
        getResult(sender: "\(Int(baifenbi))")
        huakuaiValue = sender.value
        if switchOnoff {
        getProgressValue(sender: sender.value)
        } else {
            getProgressValue(sender: sender.minimumValue)
        }
        
    }
   
    func getResult(sender: String) {
        textAre.text = sender
    }
    
    func getProgressValue(sender: Float) {
        ew.progress = sender
    }
}

