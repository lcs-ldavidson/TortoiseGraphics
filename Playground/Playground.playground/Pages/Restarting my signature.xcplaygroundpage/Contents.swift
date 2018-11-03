//: [Previous](@previous)

import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas


canvas.drawing { turtle in
    
    turtle.drawcurve(sideLength: 1, drawSides: 360, withtotalSides: 360, curveRight: true)
    
    
    
    
    
    
    
}

//: [Next](@next)
