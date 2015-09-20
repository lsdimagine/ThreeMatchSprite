//
//  Item.swift
//  ThreeMatchOnSprite
//
//  Created by Shidong Lin on 9/19/15.
//  Copyright © 2015 Shidong Lin. All rights reserved.
//

import Foundation

import SpriteKit

enum ItemType:Int{
    case Unknown = 0, Cheer, Naruto, Sonic, Zero
    
    var itemName: String {
        let itemNames = ["Cheer", "Naruto", "Sonic", "Zero"]
        return itemNames[rawValue-1]
    }
    
    static func randomItem() -> ItemType {
        return ItemType(rawValue: Int(arc4random_uniform(4) + 1))!
    }
}

class Item {
    var column, row:Int
    //item type can not be changed
    let itemType:ItemType
    var spriteNode:SKSpriteNode?
    
    init(column:Int, row:Int, itemType:ItemType){
        self.column = column
        self.row = row
        self.itemType = itemType
    }
    
    //get relevant sprite
    func getSprite() -> SKSpriteNode? {
        let sprite = SKSpriteNode(imageNamed: itemType.itemName)
        sprite.size = CGSizeMake(tileWidth, tileHeight)
        self.spriteNode = sprite
        return sprite
    }
}
