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

    
    override func draw(_ rect: CGRect) {
        let origin = CGPoint(x: (bounds.width/2)-150, y:(bounds.height/2)-150)
        let circleOrigin = CGPoint(x: (bounds.width/2), y:(bounds.height/2))
        let rectangle = CGRect(origin: origin, size: CGSize(width: 300.0, height: 300.0))
        let path = UIBezierPath(rect: rectangle)
        UIColor.gray.setStroke()
        path.stroke()
        UIColor.gray.setFill()
        path.fill()
        let circle = UIBezierPath(arcCenter: circleOrigin, radius: 150, startAngle: 0, endAngle: 360, clockwise: true)
        circle.lineWidth = 0.0
        UIColor.black.setStroke()
        UIColor.white.setFill()
        circle.fill()
        let hands = UIBezierPath()
        hands.move(to: circleOrigin)
        hands.addArc(withCenter: circleOrigin, radius: 5, startAngle: 0, endAngle: 360, clockwise: true)
        hands.addLine(to: CGPoint(x: (bounds.width/2)+90, y: (bounds.height/2)+90))
        hands.move(to: circleOrigin)
        hands.addLine(to: CGPoint(x: (bounds.width/2)+100, y: (bounds.height/2)))
        hands.lineWidth = 6.0
        hands.stroke()
        
    }

    

}
