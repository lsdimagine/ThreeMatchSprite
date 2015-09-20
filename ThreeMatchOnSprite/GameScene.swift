//
//  GameScene.swift
//  ThreeMatchOnSprite
//
//  Created by Shidong Lin on 9/19/15.
//  Copyright (c) 2015 Shidong Lin. All rights reserved.
//

import UIKit
import SpriteKit

class GameScene: SKScene {
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        let background = SKSpriteNode(imageNamed: "Background")
        addChild(background)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
