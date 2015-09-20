//
//  Board2D.swift
//  ThreeMatchOnSprite
//
//  Created by Shidong Lin on 9/19/15.
//  Copyright © 2015 Shidong Lin. All rights reserved.
//

import Foundation

//storing the items
class Board2D<T> {
    let columns:Int
    let rows:Int
    
    //only change it from subscript
    private var array:Array<T?>
    
    init(columns:Int, rows:Int){
        self.columns = columns
        self.rows = rows
        array = Array<T?>(count: columns*rows, repeatedValue: nil)
    }
    
    subscript(point:Point) -> T?{
        set {
            array[point.row * self.columns + point.column] = newValue
        }
        
        get {
            return array[point.row*self.columns + point.column]
        }
    }
    
}
