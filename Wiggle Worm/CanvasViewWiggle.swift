import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        canvas.color = Color.white
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { turtle in
            
            turtle.goto(-300, 300)
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
    }
}
