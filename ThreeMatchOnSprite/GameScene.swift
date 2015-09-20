//
//  GameScene.swift
//  ThreeMatchOnSprite
//
//  Created by Shidong Lin on 9/19/15.
//  Copyright (c) 2015 Shidong Lin. All rights reserved.
//

import UIKit
import SpriteKit

let tileWidth:CGFloat = 32.0
let tileHeight:CGFloat = 36.0

class GameScene: SKScene {
    var level:Level!
    
    let gameLayer = SKNode()
    let itemsLayer = SKNode()
    
    let itemLayerPosition = CGPoint(x: -tileWidth * CGFloat(columns) / 2,
                                    y: -tileHeight * CGFloat(rows) / 2)
    
    override init(size: CGSize) {
        super.init(size: size)
        
        anchorPoint = CGPoint(x: 0.5, y: 0.5)
        let background = SKSpriteNode(imageNamed: "Background")
        addChild(background)
        
        addChild(gameLayer)
        itemsLayer.position = itemLayerPosition;
        gameLayer.addChild(itemsLayer)
    }
    
    //add the sprites
    func addSpritesForItems(){
        for column in 0 ..< columns{
            for row in 0 ..< rows{
                //create and get sprite
                let sprite = level.ItemAtPoint(column, row: row)?.getSprite()
                sprite?.position = pointForColumnAndRow(column, row: row)
                if (sprite != nil){
                    itemsLayer.addChild(sprite!)
                }
            }
        }
    }
    
    //get the point position from column and row
    func pointForColumnAndRow(column:Int, row:Int) -> CGPoint{
        return CGPoint(x: tileWidth * CGFloat(column) + tileWidth / 2,
                       y: tileHeight * CGFloat(row) + tileHeight / 2)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
