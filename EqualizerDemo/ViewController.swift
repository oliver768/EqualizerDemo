//
//  ViewController.swift
//  EqualizerDemo
//
//  Created by Ravindra Sonkar on 29/01/20.
//  Copyright © 2020 Ravindra Sonkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lV1: UIView!
    @IBOutlet weak var lV2: UIView!
    @IBOutlet weak var lV3: UIView!
    @IBOutlet weak var lV4: UIView!
    @IBOutlet weak var lV5: UIView!
    @IBOutlet weak var lV6: UIView!
    @IBOutlet weak var lV7: UIView!
    @IBOutlet weak var lV8: UIView!
    @IBOutlet weak var lV9: UIView!
    @IBOutlet weak var rV1: UIView!
    @IBOutlet weak var rV2: UIView!
    @IBOutlet weak var rV3: UIView!
    @IBOutlet weak var rV4: UIView!
    @IBOutlet weak var rV5: UIView!
    @IBOutlet weak var rV6: UIView!
    @IBOutlet weak var rV7: UIView!
    @IBOutlet weak var rV8: UIView!
    @IBOutlet weak var rV9: UIView!
    
    var tempDict = NSMutableDictionary()
    var timer : Timer?
    
    @IBAction func btnAction(_ sender: Any) {
        makeEquilizer()
        timer?.invalidate()
        timer = nil
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(makeEquilizer), userInfo: nil, repeats: true)
    }
    
    @objc func makeEquilizer() {
        tempDict.setValue(false, forKey: "isActive1")
        tempDict.setValue(false, forKey: "isActive2")
        tempDict.setValue(false, forKey: "isActive3")
        tempDict.setValue(false, forKey: "isActive4")
        tempDict.setValue(false, forKey: "isActive5")
        tempDict.setValue(false, forKey: "isActive6")
        tempDict.setValue(false, forKey: "isActive7")
        tempDict.setValue(false, forKey: "isActive8")
        tempDict.setValue(false, forKey: "isActive9")
        let randonNum = (1...9).randomElement()
        for i in 1...randonNum! {
            tempDict.setValue(true, forKey: "isActive" + i.description)
        }
        
        lV1.backgroundColor = (tempDict.value(forKey: "isActive1") as! Bool) ? UIColor.green : .opaqueSeparator
        lV2.backgroundColor = (tempDict.value(forKey: "isActive2") as! Bool) ? UIColor.green : .opaqueSeparator
        lV3.backgroundColor = (tempDict.value(forKey: "isActive3") as! Bool) ? UIColor.green : .opaqueSeparator
        lV4.backgroundColor = (tempDict.value(forKey: "isActive4") as! Bool) ? UIColor.green : .opaqueSeparator
        lV5.backgroundColor = (tempDict.value(forKey: "isActive5") as! Bool) ? UIColor.green : .opaqueSeparator
        lV6.backgroundColor = (tempDict.value(forKey: "isActive6") as! Bool) ? UIColor.green : .opaqueSeparator
        lV7.backgroundColor = (tempDict.value(forKey: "isActive7") as! Bool) ? UIColor.green : .opaqueSeparator
        lV8.backgroundColor = (tempDict.value(forKey: "isActive8") as! Bool) ? UIColor.green : .opaqueSeparator
        lV9.backgroundColor = (tempDict.value(forKey: "isActive9") as! Bool) ? UIColor.green : .opaqueSeparator
        rV1.backgroundColor = (tempDict.value(forKey: "isActive1") as! Bool) ? UIColor.green : .opaqueSeparator
        rV2.backgroundColor = (tempDict.value(forKey: "isActive2") as! Bool) ? UIColor.green : .opaqueSeparator
        rV3.backgroundColor = (tempDict.value(forKey: "isActive3") as! Bool) ? UIColor.green : .opaqueSeparator
        rV4.backgroundColor = (tempDict.value(forKey: "isActive4") as! Bool) ? UIColor.green : .opaqueSeparator
        rV5.backgroundColor = (tempDict.value(forKey: "isActive5") as! Bool) ? UIColor.green : .opaqueSeparator
        rV6.backgroundColor = (tempDict.value(forKey: "isActive6") as! Bool) ? UIColor.green : .opaqueSeparator
        rV7.backgroundColor = (tempDict.value(forKey: "isActive7") as! Bool) ? UIColor.green : .opaqueSeparator
        rV8.backgroundColor = (tempDict.value(forKey: "isActive8") as! Bool) ? UIColor.green : .opaqueSeparator
        rV9.backgroundColor = (tempDict.value(forKey: "isActive9") as! Bool) ? UIColor.green : .opaqueSeparator
    }
}

