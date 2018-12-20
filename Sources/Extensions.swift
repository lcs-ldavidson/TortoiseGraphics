//
//  Extensions.swift
//  TortoiseGraphics
//
//  Created by Davidson, Liam on 2018-10-26.
//

import Foundation
import CoreGraphics

public extension Tortoise {

    func square(withSize size: Double) {

        self.penDown()
        for _ in 1...4 {
            self.hideTortoise()

            self.penUp()

            self.forward(size/2)
            self.left(90)
            self.forward(size/2)
            self.left(180)

            self.penDown()
            for _ in 1...4 {
                self.forward(size)
                self.right(90)
            }
            self.penUp()
            self.forward(size/2)
            self.right(90)
            self.forward(size/2)
            self.right(180)

            self.penDown()
        }
    }

    func randomShape(withSize size: Double) {

        self.penDown()

        var distance = size * random(5)

        self.forward(distance)
        self.right(180)
        self.right(random(90))
        self.left(180)
        self.left(random(90))

    }

    func curve(withSize size: Double, drawSides sides: Int, maxPenSize penSize: Int) {

        var brushSize = 15
        var brushUpOrDown = 0

        self.penDown()

        for sidesDrawn in 1...Int(sides) {

            self.forward(size)

            if size >= 0 {
                self.right(1.8)
            } else {
                self.left(1.8)
            }

            //            changing whether or not the brush is changing

            if sidesDrawn < (sides/3) {
                brushUpOrDown = 0
            } else if sidesDrawn >= (sides/3) && sidesDrawn < ((sides/3) * 2) {
                brushUpOrDown = 1
            } else if sidesDrawn > ((sides/3) * 2) {
                brushUpOrDown = 2
            }

            //            changing the brush size

            if brushUpOrDown == 0 {
                if brushSize <= penSize {
                    brushSize += 2
                }
            } else if brushUpOrDown == 1 {

            } else if brushUpOrDown == 2 {

                //                brushSize -= 0.1

            }

        }

        self.penUp()

    }

    func drawcurve(sideLength size: Int, drawSides sides: Int, withtotalSides totalSides: Int, curveRight rorL: Bool) {

        //variables
        var brushSize = 2

        for sidesDrawn in 1...sides {

            self.penDown()

            //natural stroke attempt

            //            if sidesDrawn < (sides/2) {
            //                brushSize += (15/(sides/2))
            //            } else if sidesDrawn == (sides/2) {
            //                self.penSize(30)
            //            } else if sidesDrawn > (sides/2) {
            //                brushSize -= (15/(sides/2))
            //            }

            self.penSize(Double(brushSize))

            //drawing the curve
            self.forward(Double(size))

            if rorL == true {
                self.right(Double(360/totalSides))
            } else {
                self.left(Double(360/totalSides))
            }

        }

    }

    func upperCaseL(scaleFactor scale: Double = 1.0) {

        self.left(90)
        self.penSize(15)
        self.penDown()
        self.forward(150 * scale)
        self.left(20)
        self.drawcurve(sideLength: Int(3 * scale), drawSides: 40, withtotalSides: 360, curveRight: false)
        self.right(9)
        self.drawcurve(sideLength: Int(1 * scale), drawSides: 360, withtotalSides: 360, curveRight: false)
        self.left(30)
        self.drawcurve(sideLength: Int(5 * scale), drawSides: 50, withtotalSides: 360, curveRight: false)
        self.drawcurve(sideLength: Int(1 * scale), drawSides: 360, withtotalSides: 360, curveRight: true)
        self.right(15)
        self.drawcurve(sideLength: Int(3 * scale), drawSides: 50, withtotalSides: 360, curveRight: false)
        self.left(15)

    }

    func lowerCaseI(scaleFactor scale: Double = 1.0) {

        self.drawcurve(sideLength: Int(2 * scale), drawSides: 90, withtotalSides: 360, curveRight: false)
        self.right(180)
        self.drawcurve(sideLength: Int(2 * scale), drawSides: 90, withtotalSides: 360, curveRight: false)

    }

    func lowerCaseA(scaleFactor scale: Double = 1.0) {

        self.drawcurve(sideLength: Int(1 * scale), drawSides: 360, withtotalSides: 360, curveRight: false)
        self.drawcurve(sideLength: Int(1 * scale), drawSides: 90, withtotalSides: 360, curveRight: false)
        self.forward(60 * scale)
        self.back(57)
        self.right(180)
        self.drawcurve(sideLength: Int(1 * scale), drawSides: 90, withtotalSides: 360, curveRight: false)

    }

    func lowerCaseM(scaleFactor scale: Double = 1.0) {

        self.drawcurve(sideLength: Int(1 * scale), drawSides: 90, withtotalSides: 360, curveRight: false)
        self.forward(60 * scale)
        self.back(60)
        self.back(57)
        self.drawcurve(sideLength: Int(2 * scale), drawSides: 180, withtotalSides: 360, curveRight: true)
        self.right(180)
        self.drawcurve(sideLength: Int(2 * scale), drawSides: 180, withtotalSides: 360, curveRight: true)
        self.drawcurve(sideLength: Int(1 * scale), drawSides: 180, withtotalSides: 360, curveRight: false)
        self.drawcurve(sideLength: Int(5 * scale), drawSides: 90, withtotalSides: 360, curveRight: false)
        self.forward(550 * scale)
        self.drawcurve(sideLength: Int(1 * scale), drawSides: 170, withtotalSides: 360, curveRight: false)

    }

    func hairball(centerPointX x: Double, centerPointY y: Double, squiggleFactor turn: Double, numberOfArms arms: Double, armLength length: Double) {

        for _ in 1...Int(arms) {

            self.penUp()

            self.goto(x, y)

            for _ in 1...Int(self.random(30) + 10) {
                self.penDown()
                self.forward(length)
                self.right(self.random(turn) - (turn / 2))
            }

            self.penDown()

            //hand
//            for _ in 1...4 {
//
//                self.forward(15)
//                self.right(40)
//                self.forward(15)
//                self.back(15)
//                self.left(40)
//                self.back(15)
//                self.right(20)
//            }

            self.right(30)
            self.forward(20)

            self.penUp()
            self.goto(x, y)
            self.setHeading(self.random(360))

        }

    }

    func drawLegs(atX x: Double, atY y: Double, legLength length: Double) {

        var randomShift = self.random(10) - 5
        self.right(randomShift)

        self.penDown()

        self.right(70)
        self.forward(length)
        self.back(length)
        self.left(140)
        self.forward(length)
        self.back(length)
        self.left(40)
        self.forward(length / 2)
        self.back(length / 2)
        self.left(140)
        self.forward(length / 2)
        self.back(length / 2)
        self.left(110)

        self.left(randomShift)
    }

    func wiggleWorm(startX x: Double, startY y: Double) {

        //set self qualities
        self.penColor(Color.black)
        self.penSize(1)
        self.goto(x, y)
        self.hideTortoise()
        self.setH(self.random(360))

        //set starting leg length
        var length = 1.0
        var drawLongLeg = 0
        var longLegLength = length * 3
        //determine length of worm
        for _ in 1 ... Int(self.random(200) + 300) {

            //draw the set of legs
            if drawLongLeg % 10 == 0 {
                length += longLegLength
                self.drawLegs(atX: self.ycor, atY: self.ycor, legLength: length)
                length -= longLegLength
            } else {
                self.penUp()
                self.drawLegs(atX: self.ycor, atY: self.ycor, legLength: length)
            }
            //increase the next legs' length
            length += 0.09
            drawLongLeg += 1

            //turn a random amount
            self.right(self.random(10) - 5)
            self.forward(1)

        }

        //tells me what length currently is
        print(length)

        var centerHeadX = self.xcor
        var centerHeadY = self.ycor
        var centerHeading = self.heading

        //drawing head
        self.left(90)
        self.forward(length)
        self.right(90)
        self.fillColor(Color.black)
        self.beginFill()
        self.drawcurve(sideLength: 6, drawSides: Int(length), withtotalSides: Int(length), curveRight: true)
        self.endFill()

        //drawing left eye
        self.goto(centerHeadX, centerHeadY)
        self.setH(centerHeading)
        self.left(90)
        self.forward(length - 5)
        self.right(90)
        self.penColor(Color.white)
        self.fillColor(Color.white)
        self.beginFill()
        self.drawcurve(sideLength: 2, drawSides: Int(length), withtotalSides: Int(length), curveRight: true)
        self.endFill()

        //drawing left pupil
        self.fillColor(Color.black)
        self.beginFill()
        self.drawcurve(sideLength: 2, drawSides: 30, withtotalSides: 30, curveRight: true)
        self.endFill()

        //drawing left shine
        self.fillColor(Color.white)
        self.beginFill()
        self.drawcurve(sideLength: 1, drawSides: 20, withtotalSides: 20, curveRight: true)
        self.endFill()

        //drawing right eye
        self.fillColor(Color.white)
        self.penUp()
        self.goto(centerHeadX, centerHeadY)
        self.setH(centerHeading)
        self.right(90)
        self.forward(length - 5)
        self.left(90)
        self.penDown()
        self.beginFill()
        self.drawcurve(sideLength: 2, drawSides: Int(length), withtotalSides: Int(length), curveRight: false)
        self.endFill()

        //drawing right pupil
        self.fillColor(Color.black)
        self.beginFill()
        self.drawcurve(sideLength: 2, drawSides: 30, withtotalSides: 30, curveRight: false)
        self.endFill()

        //drawing right pupil
        self.fillColor(Color.white)
        self.penUp()
        self.left(90)
        self.forward(10)
        self.penDown()
        self.beginFill()
        self.drawcurve(sideLength: 1, drawSides: 20, withtotalSides: 20, curveRight: false)
        self.endFill()

        //draw pincers

        //draw right pincer
        self.penColor(Color.black)
        self.fillColor(Color.black)
        self.penUp()

        self.goto(centerHeadX, centerHeadY)
        self.setH(centerHeading)
        self.forward(length - 10)
        self.right(90)
        self.forward(length - 15)
        self.left(90)

        self.penDown()
        self.beginFill()
        self.drawcurve(sideLength: 1, drawSides: 35, withtotalSides: 360, curveRight: false)
        self.left(150)
        self.drawcurve(sideLength: 1, drawSides: 35, withtotalSides: 360, curveRight: true)
        self.endFill()

        //draw left pincer
        self.goto(centerHeadX, centerHeadY)
        self.setH(centerHeading)
        self.forward(length - 10)
        self.left(90)
        self.forward(length - 15)
        self.right(90)

        self.penDown()
        self.beginFill()
        self.drawcurve(sideLength: 1, drawSides: 35, withtotalSides: 360, curveRight: true)
        self.right(150)
        self.drawcurve(sideLength: 1, drawSides: 35, withtotalSides: 360, curveRight: false)
        self.endFill()

    }

}
