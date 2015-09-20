//
//  Level.swift
//  ThreeMatchOnSprite
//
//  Created by Shidong Lin on 9/19/15.
//  Copyright © 2015 Shidong Lin. All rights reserved.
//

import Foundation

let columns = 9
let rows = 9

class Level {
    private var itemBoard = Board2D<Item>.init(columns: columns, rows: rows)
    
    func ItemAtPoint(point:Point) -> Item?{
        assertPoint(point)
        return itemBoard[point]
    }
    
    //check if the point is valid
    func assertPoint(point:Point){
        assert(point.row >= 0 && point.row < rows)
        assert(point.column >= 0 && point.column < columns)
    }
    
    //init the board
    func createBoard(){
        for row in 0 ..< rows{
            for column in 0 ..< columns{
                let itemType = ItemType.randomItem();
                
                let item = Item.init(column: column, row: row, itemType: itemType)
                let point = Point.init(column: column, row: row)
                itemBoard[point] = item
            }
        }
    }
}
