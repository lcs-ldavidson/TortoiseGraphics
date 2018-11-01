//: # With a tortoise 🐢
//: [👉 With 2 tortoises 🐢🐢](@next)
import PlaygroundSupport
import TortoiseGraphics
import CoreGraphics

let myFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
let canvas = PlaygroundCanvas(frame: myFrame)
canvas.frameRate = 300
canvas.color = .white
PlaygroundPage.current.liveView = canvas
canvas.color = Color.blue


canvas.color = Color.black

canvas.drawing { turtle in

    turtle.fillColor(.black)
    turtle.penColor(.orange)

    //draw a square

    turtle.beginFill()

    for _ in 1...180 {
        for _ in 1...3 {

            turtle.forward(100)
            turtle.right(120)
        }
        turtle.right(91)
    }

    turtle.endFill()
}


//cartesian planes
//
//canvas.drawing { turtle in
//
//    for _ in 1...20 {
//
//    turtle.penUp()
//turtle.goto(-300, -300)
//    turtle.penDown()
//turtle.forward(600)
//turtle.right(90)
//    turtle.forward(30)
//    turtle.right(90)
//    turtle.forward(600)
//
//}
//
//}
//


