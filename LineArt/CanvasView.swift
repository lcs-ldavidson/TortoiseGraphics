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
            
            //make multiple worms
            for _ in 1...3 {
                
                //draw a worm
                turtle.penUp()
                turtle.wiggleWorm(startX: (turtle.random(600) - 300), startY: (turtle.random(400) -  200))
                
            }
            
            
            
        }
    }
}
