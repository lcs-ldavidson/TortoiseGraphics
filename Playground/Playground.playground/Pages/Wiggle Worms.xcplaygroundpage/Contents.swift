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
    
    var length = 1.0
        
        for i in stride(from: -200, to: 200, by: 2){
            
            turtle.penUp()
            
            turtle.drawLegs(atX: 0, atY: Double(i), legLength: length)
            
            length += 1.0
            
        }
    }



//: [Next](@next)
