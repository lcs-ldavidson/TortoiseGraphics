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
    
    
    for _ in 1...20 {
        
        turtle.fillColor(Color.black)
        turtle.back(1000)
        turtle.left(90)
        turtle.beginFill()
        for _ in 1...4 {
            turtle.forward(100)
            turtle.right(90)
        }
        turtle.endFill()
        canvas.drawing { turtle in
            
            turtle.hideTortoise()
            
            
            for _ in 1...Int(turtle.random(15) + 5) {
                
                
                turtle.penColor(turtle.random(255), turtle.random(255), turtle.random(255))
                
                turtle.penSize(turtle.random(4))
                
                turtle.hairball(centerPointX: turtle.random(600) - 300, centerPointY: turtle.random(600) - 300, squiggleFactor: turtle.random(40), numberOfArms: turtle.random(30) + 20, armLength: turtle.random(10))
            }
            
            
        }
        
    
}
}
//: [Next](@next)
