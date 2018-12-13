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
    
    
    turtle.setHeading(120)
    turtle.penColor(.black)
    turtle.penSize(2)
    
    
    var hairballSize = 3
    var wigglePositionY = -300
    var wigglePositionX = -300
    
    for _ in 1...150 {
        
        turtle.hairball(centerPointX: Double(wigglePositionX), centerPointY: Double(wigglePositionY), squiggleFactor: turtle.random(20), numberOfArms: turtle.random(15), armLength: Double(hairballSize))
        
        hairballSize += 1
        wigglePositionX += 2
        wigglePositionY += 2
        
        
    }
}


//: [Next](@next)
