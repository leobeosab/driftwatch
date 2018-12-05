//
//  car.swift
//  driftwatch
//
//  Created by Ryan Wise on 12/1/18.
//  Copyright © 2018 Ryan Wise. All rights reserved.
//

import Foundation
import SpriteKit

class Car : SKSpriteNode {
    var carSpeed: Double = 0
    var carRotation: Double = 0
    var steeringRotation: Double = 0
    var hasGrip: Bool = true
    
    func getSpeed() -> Double {
        return self.carSpeed
    }
    
    func setSpeed(speed: Double) {
        self.carSpeed = speed
    }
    
    func getCarRotation() -> Double {
        return self.carRotation
    }
    
    func setCarRotation(rotation: Double) {
        self.carRotation = rotation
    }
    
}
