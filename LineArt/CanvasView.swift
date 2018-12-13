import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        canvas.drawing { turtle in
            
            turtle.hideTortoise()
            
            //create variables

            turtle.penSize(2)
            
            var hairballSize = 1
            var wigglePositionY = -300.0
            var wigglePositionX = -300.0
            var wiggleFactor = 5.0
            
            
            for _ in 1...800{
                
                turtle.hairball(centerPointX: turtle.position.x, centerPointY: turtle.position.y, squiggleFactor: turtle.random(50), numberOfArms: 2, armLength: Double(hairballSize / 130))
                
                hairballSize += 1
                
                turtle.right(turtle.random(10) - 5)
                
                turtle.forward(5)
                
                
//                wigglePositionX += changeX
//                wigglePositionY += changeY
                
                
                // Command "t" on canvas to make the turtle draw
                //        canvas.drawing { turtle in
                //
                //
                //            turtle.fillColor(Color.white)
                //            turtle.back(1000)
                //            turtle.left(90)
                //            turtle.beginFill()
                //            for _ in 1...4 {
                //                turtle.forward(100)
                //                turtle.right(90)
                //            }
                //            turtle.endFill()
                //            canvas.drawing { turtle in
                //
                //                turtle.hideTortoise()
                //
                //
                //                for _ in 1...10 {
                //
                //
                //                    //                    turtle.penColor(turtle.random(255), turtle.random(255), turtle.random(255))
                //
                //                    turtle.penSize(turtle.random(2))
                //
                //                    turtle.hairball(centerPointX: 0, centerPointY: 0, squiggleFactor: turtle.random(200), numberOfArms: turtle.random(15) + 20, armLength: turtle.random(30))
                //                }
                //
                //                turtle.setHeading(90)
                //
                //
                //                for i in 1...5 {
                //                    turtle.penUp()
                //                    turtle.goto(-25, 10)
                //                    turtle.penDown()
                //                    turtle.penColor(.white)
                //                    turtle.penSize(1)
                //                    turtle.drawcurve(sideLength: i, drawSides: 20, withtotalSides: 20, curveRight: true)
                //                }
                //
                //                for i in 1...5 {
                //                    turtle.penUp()
                //                    turtle.goto(25, 10)
                //                    turtle.penDown()
                //                    turtle.penColor(.white)
                //                    turtle.penSize(1)
                //                    turtle.drawcurve(sideLength: i, drawSides: 20, withtotalSides: 20, curveRight: true)
                //                }
                //
                //                //again
                //
                //                turtle.setHeading(87)
                //
                //                for i in 1...5 {
                //                    turtle.penUp()
                //                    turtle.goto(-25, 10)
                //                    turtle.penDown()
                //                    turtle.penColor(.white)
                //                    turtle.penSize(1)
                //                    turtle.drawcurve(sideLength: i, drawSides: 20, withtotalSides: 20, curveRight: true)
                //                }
                //
                //                for i in 1...5 {
                //                    turtle.penUp()
                //                    turtle.goto(25, 10)
                //                    turtle.penDown()
                //                    turtle.penColor(.white)
                //                    turtle.penSize(1)
                //                    turtle.drawcurve(sideLength: i, drawSides: 20, withtotalSides: 20, curveRight: true)
                //                }
                //
                //
                //
                //                //pupils
                //
                //                turtle.setHeading(90)
                //
                //                turtle.penUp()
                //                turtle.goto(-23, 5)
                //                turtle.penDown()
                //                turtle.penColor(.black)
                //                turtle.penSize(2)
                //                turtle.drawcurve(sideLength: 1, drawSides: 60, withtotalSides: 60, curveRight: true)
                //
                //
                //
                //
                //                turtle.penUp()
                //                turtle.goto(27, 5)
                //                turtle.penDown()
                //                turtle.penColor(.black)
                //                turtle.penSize(2)
                //                turtle.drawcurve(sideLength: 1, drawSides: 60, withtotalSides: 60, curveRight: true)
                //
                //
                
                
                //                turtle.beginFill()
                //
                //                turtle.penUp()
                //                turtle.fillColor(.white)
                //                turtle.penColor(.white)
                //                turtle.penSize(1)
                //                turtle.goto(-25, 20)
                //                turtle.setHeading(90)
                //
                //                turtle.penDown()
                //                turtle.drawcurve(sideLength: 1, drawSides: 100, withtotalSides: 100, curveRight: true)
                //
                //                turtle.endFill()
                //
                //
                //
                //
                //
                //                turtle.beginFill()
                //
                //                turtle.penUp()
                //                turtle.fillColor(.white)
                //                turtle.penColor(.white)
                //                turtle.penSize(1)
                //                turtle.goto(25, 20)
                //                turtle.setHeading(90)
                //
                //                turtle.penDown()
                //                turtle.drawcurve(sideLength: 1, drawSides: 100, withtotalSides: 100, curveRight: true)
                //
                //                turtle.endFill()
                //
                
                
                
            }
            
            //            turtle.hideTortoise()
            //
            //            //drawing presets
            //            turtle.fillColor(.red)
            //            turtle.penColor(.black)
            //            turtle.penSize(1)
            //
            //            for _ in 1...600 {
            //
            //                turtle.beginFill()
            //
            //                for _ in 1...3 {
            //                    turtle.forward(Double(size))
            //                    turtle.right(120)
            //                }
            //
            //                turtle.endFill()
            //
            ////                var color = turtle.random(10)
            ////
            ////                if color == 1 {
            ////                    turtle.fillColor(Color.amber)
            ////                } else if color == 2 {
            ////                    turtle.fillColor(Color.blue)
            ////                } else if color == 3 {
            ////                    turtle.fillColor(Color.orange)
            ////                } else if color == 4 {
            ////                    turtle.fillColor(Color.deepOrange)
            ////                } else if color == 5 {
            ////                    turtle.fillColor(Color.pink)
            ////                } else if color == 6 {
            ////                    turtle.fillColor(Color.purple)
            ////                } else if color == 7 {
            ////                    turtle.fillColor(Color.cyan)
            ////                } else if color == 8 {
            ////                    turtle.fillColor(Color.green)
            ////                } else if color == 9 {
            ////                    turtle.fillColor(Color.lime)
            ////                } else if color == 10 {
            ////                    turtle.fillColor(Color.indigo)
            ////                }
            //
            //
            //
            //                if switchColor < 200 {
            //                    r -= 1
            //                } else if switchColor <= 200 && switchColor <= 400 {
            //                    g -= 1
            //                } else if switchColor > 400 {
            //                    b -= 1
            //                }
            //
            //                size -= 1
            //
            //
            //
            //                turtle.right(4)
            //
            //
            //            }
            //
            //        }
            //    }
        }
    }
    
}
