//: [Previous](@previous)

import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 800, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 100
canvas.color = .white
PlaygroundPage.current.liveView = canvas



canvas.drawing { turtle in
    
    turtle.penUp()
    turtle.goto(300, 275)
    turtle.penSize(1)
    turtle.hideTortoise()
    
    turtle.penUp()
    turtle.left(-70)
    turtle.curve(withSize: -25, drawSides: 16, maxPenSize:  30)
    turtle.curve(withSize: -2.5, drawSides: 200, maxPenSize: 30)
    turtle.left(180)
    turtle.curve(withSize: 25, drawSides: 16, maxPenSize: 30)
    turtle.right(180)
    turtle.curve(withSize: 30, drawSides: 25, maxPenSize: 30)
    turtle.right(30)
    turtle.curve(withSize: -25, drawSides: 30, maxPenSize: 30)
    turtle.right(-10)
    turtle.curve(withSize: 20, drawSides: 30, maxPenSize: 30)
    
    
    
    
}








//: [Next](@next)
