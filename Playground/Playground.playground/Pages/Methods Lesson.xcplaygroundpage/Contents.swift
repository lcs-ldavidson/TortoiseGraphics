//: [Previous](@previous)

import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .black
PlaygroundPage.current.liveView = canvas


canvas.drawing { turtle in
    
    turtle.penColor(.white)

    
//    for i in stride(from: 300, to: 1, by: -30) {
//
//        turtle.square(withSize: Double(i))
//
//
//
//    }
    
    for _ in 1...50 {
    
    turtle.randomShape(withSize: 30)
    
    }
    
    
}
