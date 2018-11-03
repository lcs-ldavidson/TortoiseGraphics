import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { turtle in
            
            turtle.penUp()
            turtle.goto(300, 275)
            turtle.penSize(1)
//            turtle.hideTortoise()
            
            turtle.penUp()
            turtle.left(-70)
            turtle.curve(withSize: -25, drawSides: 16, maxPenSize:  30)
            turtle.curve(withSize: -3, drawSides: 200, maxPenSize: 20)
            turtle.left(180)
            turtle.curve(withSize: 25, drawSides: 16, maxPenSize: 30)
            turtle.right(180)
            turtle.curve(withSize: 30, drawSides: 25, maxPenSize: 30)
            turtle.right(30)
            turtle.curve(withSize: -25, drawSides: 30, maxPenSize: 30)
            turtle.right(-10)
            turtle.curve(withSize: 20, drawSides: 30, maxPenSize: 30)
            turtle.right(-134.9999999999999)
            
            //repositioning
            turtle.penUp()
            turtle.forward(250)
            turtle.left(90)
            turtle.forward(200)
            turtle.left(25)
            turtle.curve(withSize: -23, drawSides: 40, maxPenSize: 30)
            
            
            
            
            //output
            turtle.penSize(1)
            print( "turtle is pointing \(turtle.heading)")
            
            
        }
    }
            
}
