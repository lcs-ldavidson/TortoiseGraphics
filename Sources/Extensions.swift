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
        var brushSize = 15

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
            for _ in 1...4 {

                self.forward(15)
                self.right(40)
                self.forward(15)
                self.back(15)
                self.left(40)
                self.back(15)
                self.right(20)
            }

            self.right(30)
            self.forward(20)

            self.penUp()
            self.goto(x, y)
            self.setHeading(self.random(360))

        }

    }

}
