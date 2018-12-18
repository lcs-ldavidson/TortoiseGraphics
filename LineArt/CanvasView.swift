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
            turtle.penSize(3)
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
            
            //drawing head
            turtle.left(90)
            turtle.forward(length)
            turtle.right(90)
            turtle.fillColor(Color.black)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 6, drawSides: Int(length), withtotalSides: Int(length), curveRight: true)
            turtle.endFill()
            
            //drawing left eye
            turtle.penColor(Color.white)
            turtle.fillColor(Color.white)
            turtle.beginFill()
            turtle.drawcurve(sideLength: 3, drawSides: Int(length), withtotalSides: Int(length), curveRight: true)
            turtle.endFill()
            
            //drawing right eye
            turtle.penUp()
            turtle.right(90)
            turtle.forward(length * 2)
            turtle.left(90)
            turtle.penDown()
            turtle.beginFill()
            turtle.drawcurve(sideLength: 3, drawSides: Int(length), withtotalSides: Int(length), curveRight: false)
            turtle.endFill()
            
            
            
        }
    }
}
