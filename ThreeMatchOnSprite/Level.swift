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
    
    func ItemAtPoint(column:Int, row:Int) -> Item?{
        assertPoint(column, row:row)
        return itemBoard[column, row]
    }
    
    //check if the point is valid
    func assertPoint(column:Int, row:Int){
        assert(row >= 0 && row < rows)
        assert(column >= 0 && column < columns)
    }
    
    //init the board
    func createBoard(){
        for row in 0 ..< rows{
            for column in 0 ..< columns{
                let itemType = ItemType.randomItem();
                
                let item = Item.init(column: column, row: row, itemType: itemType)
                itemBoard[column, row] = item
            }
        }
    }
}
