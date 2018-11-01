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
        canvas.drawing { t in
            
            // Add your commands within this block
            t.penUp()
            t.goto(300, 275)
            t.penSize(1)
            t.hideTortoise()
            
            //    turtle.penUp()
            //    turtle.left(-70)
            //    turtle.curve(withSize: -25, drawSides: 16)
            //    turtle.curve(withSize: -2.5, drawSides: 200)
            //    turtle.left(180)
            //    turtle.curve(withSize: 25, drawSides: 16)
            //    turtle.right(180)
            //    turtle.curve(withSize: 30, drawSides: 25)
            //    turtle.right(30)
            //    turtle.curve(withSize: -25, drawSides: 30)
            //    turtle.right(-10)
            //    turtle.curve(withSize: 20, drawSides: 30)
            
            
            t.left(-70)
            
            t.curve(withSize: 25, drawSides: 200)
            
        }
    }
    
}
