//
//  ViewController.swift
//  xyz-machine
//
//  Created by Willie Fatimehin on 2/6/19.
//  Copyright © 2019 Willie Fatimehin. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var xLabel: UILabel!
    @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
    
    var motionManager: CMMotionManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        motionManager = CMMotionManager()
        motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
    }
    
    func updateLabels(data: CMAccelerometerData?, error: Error?) {
        guard let accelarometerData = data else { return }
        print(accelarometerData)
    }


}

