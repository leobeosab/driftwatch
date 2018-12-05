//
//  GameScene.swift
//  driftwatch Shared
//
//  Created by Ryan Wise on 12/1/18.
//  Copyright © 2018 Ryan Wise. All rights reserved.
//

import SpriteKit
import WatchKit
import Foundation

class GameScene: SKScene {
    
    
    fileprivate var car : SKSpriteNode?
    
    class func newGameScene() -> GameScene {
        // Load 'GameScene.sks' as an SKScene.
        guard let scene = SKScene(fileNamed: "GameScene") as? GameScene else {
            print("Failed to load GameScene.sks")
            abort()
        }
        
        // Set the scale mode to scale to fit the window
        scene.scaleMode = .aspectFill
        
        return scene
    }
    
    func setUpScene() {
        self.car = self.childNode(withName: "//car") as? SKSpriteNode
        if let car = self.car {
            car.alpha = 0.0
            car.run(SKAction.fadeIn(withDuration: 2.0))
        }
    }
    
    override func sceneDidLoad() {
        self.setUpScene()
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    func crownRotated(rotationalDelta : Double) {
        self.car?.zRotation += CGFloat(rotationalDelta * 3.0)
        print(.pi / rotationalDelta)
    }
}

