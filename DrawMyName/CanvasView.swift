import Cocoa
import TortoiseGraphics

class CanvasView: NSView {
    
    public override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
        
        // Get current context
        guard let cgContext = NSGraphicsContext.current?.cgContext else { return }
        
        // Instantiate a GraphicsCanvas
        let canvas = GraphicsCanvas(size: bounds.size, context: cgContext)
        canvas.color = Color.green
        
        
        // Command "t" on canvas to make the turtle draw
        canvas.drawing { turtle in
            
            
            
            turtle.penUp()
            turtle.goto(-300, 250)
            
            //l
            turtle.left(120)
            turtle.drawcurve(sideLength: 10, drawSides: 20, withtotalSides: 360, curveRight: false)
            turtle.drawcurve(sideLength: 1, drawSides: 360, withtotalSides: 360, curveRight: false)
            turtle.left(30)
            turtle.drawcurve(sideLength: 5, drawSides: 50, withtotalSides: 360, curveRight: false)
            turtle.drawcurve(sideLength: 1, drawSides: 360, withtotalSides: 360, curveRight: true)
            turtle.right(15)
            turtle.drawcurve(sideLength: 3, drawSides: 50, withtotalSides: 360, curveRight: false)
            turtle.left(15)
            
            
            //i
        
            turtle.drawcurve(sideLength: 2, drawSides: 90, withtotalSides: 360, curveRight: false)
            turtle.right(180)
             turtle.drawcurve(sideLength: 2, drawSides: 90, withtotalSides: 360, curveRight: false)
            
            //a
            
            turtle.drawcurve(sideLength: 1, drawSides: 360, withtotalSides: 360, curveRight: false)
            turtle.drawcurve(sideLength: 1, drawSides: 90, withtotalSides: 360, curveRight: false)
            turtle.forward(60)
            turtle.back(57)
            turtle.right(180)
            turtle.drawcurve(sideLength: 1, drawSides: 90, withtotalSides: 360, curveRight: false)
            
            //m
            
            turtle.drawcurve(sideLength: 1, drawSides: 90, withtotalSides: 360, curveRight: false)
            turtle.forward(60)
            turtle.back(60)
            turtle.back(57)
            turtle.drawcurve(sideLength: 2, drawSides: 180, withtotalSides: 360, curveRight: true)
            turtle.right(180)
            turtle.drawcurve(sideLength: 2, drawSides: 180, withtotalSides: 360, curveRight: true)
            turtle.drawcurve(sideLength: 1, drawSides: 180, withtotalSides: 360, curveRight: false)
            turtle.drawcurve(sideLength: 5, drawSides: 90, withtotalSides: 360, curveRight: false)
            turtle.forward(550)
            turtle.drawcurve(sideLength: 1, drawSides: 170, withtotalSides: 360, curveRight: false)
            
            
            
            
            
            turtle.penSize(2)
            
            print("the turtle is looking \(turtle.heading)")
            print("the turtle is at \(turtle.xcor), \(turtle.ycor)")
            
        }
        
    }
}
