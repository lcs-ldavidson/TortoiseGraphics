import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        
        //start drawing
        canvas.drawing { turtle in
            
            //set turtle qualities
            turtle.penColor(Color.black)
            turtle.penSize(1)
            turtle.goto(0, 0)
            turtle.hideTortoise()
            turtle.setH(turtle.random(360))
            
            //set starting leg length
            var length = 1.0
            
            //determine length of worm
            for _ in 1 ... Int(turtle.random(200) + 300) {
                
                //draw the set of legs
                turtle.penUp()
                turtle.drawLegs(atX: turtle.ycor, atY: turtle.ycor, legLength: length)
                
                //increase the next legs' length
                length += 0.09
                
                //turn a random amount
                turtle.right(turtle.random(10) - 5)
                turtle.forward(1)
                
                
            }
            
            //tells me what length currently is
            print(length)
            
            var centerHeadX = turtle.xcor
            var centerHeadY = turtle.ycor
            var centerHeading = turtle.heading
            
            //drawing head
            turtle.left(90)
            turtle.forward(length)
            turtle.right(90)
            turtle.fillColor(Color.black)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 6, drawSides: Int(length), withtotalSides: Int(length), curveRight: true)
            turtle.endFill()
            
            //drawing left eye
            turtle.right(90)
            turtle.forward(5)
            turtle.left(90)
            turtle.penColor(Color.white)
            turtle.fillColor(Color.white)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 2, drawSides: Int(length), withtotalSides: Int(length), curveRight: true)
            turtle.endFill()
            
            //drawing left pupil
            turtle.fillColor(Color.black)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 2, drawSides: 30, withtotalSides: 30, curveRight: true)
            turtle.endFill()
            
            //drawing left shine
            turtle.fillColor(Color.white)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 1, drawSides: 20, withtotalSides: 20, curveRight: true)
            turtle.endFill()
            
            //drawing right eye
            turtle.fillColor(Color.white)
            turtle.penUp()
            turtle.right(90)
            turtle.forward(length * 2 - 10)
            turtle.left(90)
            turtle.penDown()
            turtle.beginFill()
            turtle.drawcurve(sideLength: 2, drawSides: Int(length), withtotalSides: Int(length), curveRight: false)
            turtle.endFill()
            
            //drawing right pupil
            turtle.fillColor(Color.black)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 2, drawSides: 30, withtotalSides: 30, curveRight: false)
            turtle.endFill()
            
            //drawing right pupil
            turtle.fillColor(Color.white)
            turtle.penUp()
            turtle.left(90)
            turtle.forward(10)
            turtle.penDown()
            turtle.beginFill()
            turtle.drawcurve(sideLength: 1, drawSides: 20, withtotalSides: 20, curveRight: false)
            turtle.endFill()
            
            
            //draw pincers
            turtle.penColor(Color.black)
            turtle.fillColor(Color.black)
            turtle.penUp()
            
            turtle.right(90)
            if length > 39 {
            turtle.forward(30)
            } else {
                turtle.forward(20)
            }
            
            turtle.penDown()
            turtle.beginFill()
            turtle.drawcurve(sideLength: 1, drawSides: 35, withtotalSides: 360, curveRight: false)
            turtle.left(150)
            turtle.drawcurve(sideLength: 1, drawSides: 35, withtotalSides: 360, curveRight: true)
            turtle.endFill()
            
            
            
            
        }
    }
}
