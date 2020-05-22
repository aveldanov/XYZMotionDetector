//
//  ViewController.swift
//  XYZMotionDetectorApp
//
//  Created by Veldanov, Anton on 5/21/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
  
  
  var motionManager: CMMotionManager!

  @IBOutlet weak var xLabel: UILabel!
  @IBOutlet weak var yLabel: UILabel!
    @IBOutlet weak var zLabel: UILabel!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    motionManager = CMMotionManager()
    
    motionManager.startAccelerometerUpdates(to: .main, withHandler: updateLabels)
  }
  
  
  // completion handler
  func updateLabels(data:CMAccelerometerData?, error : Error?){
    guard let accelerometerData = data else {
      return
    }
    print(accelerometerData)
    
  }


}

