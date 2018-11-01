//: [Previous](@previous)

import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .black
PlaygroundPage.current.liveView = canvas

var blueOrOrange = 0


canvas.drawing { turtle in
    
    turtle.penSize(1)
    
turtle.penColor(.blue)
    
    
    for _ in 1 ... 90 {
    
    turtle.forward(200)
    turtle.right(160)
    turtle.forward(100)
    turtle.left(90)
    turtle.forward(100)
    turtle.right(160)
    turtle.forward(200)
    
    turtle.right(3)
        
        blueOrOrange += 1
    
        if blueOrOrange % 2 == 0 {
            turtle.penColor(.orange)
        } else {
            turtle.penColor(.blue)
        }
        
        
    }

    
}

//: [Next](@next)
