//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 300, height: 300)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas


//background
canvas.color = Color.green

canvas.drawing { turtle in
    
    turtle.fillColor(.black)
    
    //draw a square
    
    turtle.beginFill()
    
    for _ in 1...36 {
        for _ in 1...4 {
            
            turtle.forward(100)
            turtle.right(90)
        }
        turtle.right(10)
    }
    
    turtle.endFill()
}

