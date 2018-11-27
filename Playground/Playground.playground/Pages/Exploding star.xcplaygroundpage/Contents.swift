//: [Previous](@previous)
//
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics
import AppKit


if let cgContext = NSGraphicsContext.current?.cgContext  {

    let mySize = CGSize(width: 600, height: 600)
    let canvas = GraphicsCanvas(size: mySize, context: cgContext)
    
    
    
    //create variables
    var size = 10
    var redOrYellow = 0
    
    
    canvas.drawing { turtle in
        
        turtle.hideTortoise()
        
        //drawing presets
        turtle.fillColor(.red)
        turtle.penColor(.black)
        turtle.penSize(1)
        
        for _ in 1...300 {
            
            turtle.beginFill()
            
            for _ in 1...90 {
                turtle.forward(Double(size))
                turtle.right(4)
            }
            
            turtle.endFill()
            
            var color = turtle.random(10)
            
            if color == 1 {
                turtle.fillColor(Color.amber)
            } else if color == 2 {
                turtle.fillColor(Color.blue)
            } else if color == 3 {
                turtle.fillColor(Color.orange)
            } else if color == 4 {
                turtle.fillColor(Color.deepOrange)
            } else if color == 5 {
                turtle.fillColor(Color.pink)
            } else if color == 6 {
                turtle.fillColor(Color.purple)
            } else if color == 7 {
                turtle.fillColor(Color.cyan)
            } else if color == 8 {
                turtle.fillColor(Color.green)
            } else if color == 9 {
                turtle.fillColor(Color.lime)
            } else if color == 10 {
                turtle.fillColor(Color.indigo)
            }
            
            
            //    redOrYellow += 1
            
            //    if redOrYellow % 2 == 0 {
            //        turtle.fillColor(.black)
            //    } else {
            //        turtle.fillColor(.white)
            //    }
            
            //        turtle.fillColor = Color.
            
            size -= 1
            
            turtle.right(4)
            
            
        }

        
        
    }
    

    
}


