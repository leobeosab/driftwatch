//
//  InterfaceController.swift
//  driftwatch watchOS App Extension
//
//  Created by Ryan Wise on 12/1/18.
//  Copyright © 2018 Ryan Wise. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController, WKCrownDelegate {

    @IBOutlet var skInterface: WKInterfaceSKScene!
    fileprivate var scene : GameScene?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        self.scene = GameScene.newGameScene()
        
        // Present the scene
        self.skInterface.presentScene(self.scene)
        
        // Use a preferredFramesPerSecond that will maintain consistent frame rate
        self.skInterface.preferredFramesPerSecond = 30
        crownSequencer.delegate = self
    }
    
    override func didAppear() {
        crownSequencer.focus()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func crownDidRotate(_ crownSequencer: WKCrownSequencer?, rotationalDelta: Double) {
        self.scene?.crownRotated(rotationalDelta: rotationalDelta)
    }

}
