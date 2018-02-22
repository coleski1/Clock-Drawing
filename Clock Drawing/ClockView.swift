//
//  ClockView.swift
//  Clock Drawing
//
//  Created by Cole Turner on 2/12/18.
//  Copyright © 2018 Cole Turner. All rights reserved.
//

import UIKit
@IBDesignable
class ClockView: UIView {
    

    let secondHand = UIBezierPath()
    let minuteHand = UIBezierPath()
    let hourHand = UIBezierPath()
    
    
    
    
    lazy var circleOrigin = CGPoint(x: (bounds.midX), y:(bounds.midY))
    lazy var circle = UIBezierPath(arcCenter: circleOrigin, radius: 150, startAngle: 0, endAngle: 360, clockwise: true)

    
    
    override func draw(_ rect: CGRect) {
//        let timers = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(drawLines), userInfo: nil, repeats: true)
//        timers.fire()
    
        circle.lineWidth = 0.0
        UIColor.black.setStroke()
        UIColor.white.setFill()
        circle.fill()
        
    
        drawLines()
        
        
        secondHand.lineWidth = 2.0
        secondHand.stroke()
        minuteHand.lineWidth = 4.0
        minuteHand.stroke()
        hourHand.lineWidth = 6.0
        hourHand.stroke()
        
        
        let centerClock = UIBezierPath()
        centerClock.addArc(withCenter: circleOrigin, radius: 3, startAngle: 0, endAngle: 360, clockwise: true)
        centerClock.lineWidth = 5.0
        UIColor.blue.setStroke()
        centerClock.stroke()


    }
    
    @objc func drawLines() {
        secondHand.removeAllPoints()
        secondHand.stroke()
        minuteHand.removeAllPoints()
        minuteHand.stroke()
        hourHand.removeAllPoints()
        hourHand.stroke()
        
        let date = Date()
        let calendar = Calendar.current
        let hour = CGFloat(calendar.component(.hour, from: date))
        let minutes = CGFloat(calendar.component(.minute, from: date))
        let seconds = CGFloat(calendar.component(.second, from: date))
        
        let secondsMove = rotatePoint(target: CGPoint(x:bounds.midX, y:bounds.midY-135), aroundOrigin: circleOrigin, byDegrees: 6*seconds)
        let minutesMove = rotatePoint(target: CGPoint(x:bounds.midX, y:bounds.midY-120), aroundOrigin: circleOrigin, byDegrees: 6*minutes)
        let hoursMove = rotatePoint(target: CGPoint(x:bounds.midX, y:bounds.midY-105), aroundOrigin: circleOrigin, byDegrees: 30*hour)
        
        secondHand.move(to: circleOrigin)
        secondHand.addLine(to: secondsMove)


        
        minuteHand.move(to: circleOrigin)
        minuteHand.addLine(to: minutesMove)
        
        hourHand.move(to: circleOrigin)
        hourHand.addLine(to: hoursMove)
        
        
        print("time = \(hour):\(minutes):\(seconds)")

    }
    
    func rotatePoint(target: CGPoint, aroundOrigin origin: CGPoint, byDegrees: CGFloat) -> CGPoint {
        let dx = target.x - origin.x
        let dy = target.y - origin.y
        let radius = sqrt(dx * dx + dy * dy)
        let azimuth = atan2(dy, dx) // in radians
        let newAzimuth = azimuth + byDegrees * CGFloat(Double.pi / 180.0) // convert it to radians
        let x = origin.x + radius * cos(newAzimuth)
        let y = origin.y + radius * sin(newAzimuth)
        return CGPoint(x: x, y: y)
    }

    

}
