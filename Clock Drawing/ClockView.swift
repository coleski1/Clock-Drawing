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
    
    
    var timer: Timer!
    
    func setTime() {
//        self.timer = Timer.
        
        let date = Date()
        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "hh:mm"
        let newDateString:String = outputFormatter.string(from: date)
        print(newDateString)
        
        let calendar = Calendar.current
//        let components = calendar.components(.CalendarUnitHour, .CalendarUnitMinute, fromDate: date)
//        var hour = components.hour
//        var minute = components.minute
    }
    
    override func draw(_ rect: CGRect) {
        let circleOrigin = CGPoint(x: (bounds.midX), y:(bounds.midY))
        let circle = UIBezierPath(arcCenter: circleOrigin, radius: 150, startAngle: 0, endAngle: 360, clockwise: true)
        circle.lineWidth = 0.0
        UIColor.black.setStroke()
        UIColor.white.setFill()
        circle.fill()
        
        let minuteHand = UIBezierPath()
        let hourHand = UIBezierPath()
        minuteHand.move(to: circleOrigin)
        minuteHand.addLine(to: CGPoint(x: (bounds.midX)+90, y: (bounds.midY)+90))
//        minuteHand.apply(CGAffineTransform(rotationAngle: <#T##CGFloat#>))
        hourHand.move(to: circleOrigin)
        hourHand.addLine(to: CGPoint(x: (bounds.midX)+100, y: (bounds.midY)))
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

    

}
