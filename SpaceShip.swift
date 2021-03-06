//
//  SpaceShip.swift
//  ARKitGame
//
//  Created by Preeti Patel on 24/06/17.
//  Copyright © 2017 Vandan Patel. All rights reserved.
//

import UIKit
import ARKit

class SpaceShip: SCNNode {
    
    func loadModel() {
        guard let virtualObjectScene = SCNScene(named: "art.scnassets/ship.scn") else { return }
        
        let wrapperNode = SCNNode()
        
        for child in virtualObjectScene.rootNode.childNodes {
            wrapperNode.addChildNode(child)
        }
        
        self.addChildNode(wrapperNode)
    }
}
