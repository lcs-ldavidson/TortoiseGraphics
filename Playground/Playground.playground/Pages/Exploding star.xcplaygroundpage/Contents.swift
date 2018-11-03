//: [Previous](@previous)

import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .black
PlaygroundPage.current.liveView = canvas



var size = 300
var redOrYellow = 0


canvas.drawing { turtle in
    
    turtle.hideTortoise()
    
    turtle.fillColor(.black)
    turtle.penColor(.black)
    turtle.penSize(3)
    
    for _ in 1...300 {
    
    turtle.beginFill()
    
    for _ in 1...4 {
    turtle.forward(Double(size))
    turtle.right(90)
    }
    
    turtle.endFill()
    
    redOrYellow += 1
    
    if redOrYellow % 2 == 0 {
        turtle.fillColor(.black)
    } else {
        turtle.fillColor(.white)
    }
    
    size -= 1
    
    turtle.right(4)
    
    
    }
    
    
    
}

//: [Next](@next)
