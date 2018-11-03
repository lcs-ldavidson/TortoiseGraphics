//
//  Extensions.swift
//  TortoiseGraphics
//
//  Created by Davidson, Liam on 2018-10-26.
//

import Foundation
import CoreGraphics

public extension Tortoise {
    
    func square(withSize size: Double) {
        
        self.penDown()
        for _ in 1...4 {
            self.hideTortoise()
            
            self.penUp()
            
            self.forward(size/2)
            self.left(90)
            self.forward(size/2)
            self.left(180)
            
            self.penDown()
            for _ in 1...4 {
                self.forward(size)
                self.right(90)
            }
            self.penUp()
            self.forward(size/2)
            self.right(90)
            self.forward(size/2)
            self.right(180)
            
            self.penDown()
        }
    }
    
    func randomShape(withSize size: Double) {
        
        self.penDown()
        
        var distance = size * random(5)
        
        self.forward(distance)
        self.right(180)
        self.right(random(90))
        self.left(180)
        self.left(random(90))
        
    }
    
    func curve(withSize size: Double, drawSides sides: Int, maxPenSize penSize: Int) {
        
        var brushSize = 15
        var brushUpOrDown = 0
        
        self.penDown()
        
        for sidesDrawn in 1...Int(sides) {
            
            self.penSize(Double(brushSize))
            
            self.forward(size)
            
            if size >= 0 {
                self.right(1.8)
            } else {
                self.left(1.8)
            }
            
            //changing whether or not the brush is changing
            
            if sidesDrawn < (sides/3) {
                brushUpOrDown = 0
            } else if sidesDrawn >= (sides/3) && sidesDrawn < ((sides/3) * 2) {
                brushUpOrDown = 1
            } else if sidesDrawn > ((sides/3) * 2) {
                brushUpOrDown = 2
            }
            
            //changing the brush size
            
            if brushUpOrDown == 0 {
                
                brushSize += 2
                
            } else if brushUpOrDown == 1 {
                
            } else if brushUpOrDown == 2 {
                brushSize -= 2
            }
            
        }
        
    }
    
}
