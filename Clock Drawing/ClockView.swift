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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override func draw(_ rect: CGRect) {
        let circleOrigin = CGPoint(x: (UIScreen.main.bounds.width/2), y:(UIScreen.main.bounds.height/2))
        let circle = UIBezierPath(arcCenter: circleOrigin, radius: 150, startAngle: 0, endAngle: 360, clockwise: true)
        circle.lineWidth = 0.0
        UIColor.black.setStroke()
        UIColor.white.setFill()
        circle.fill()
        let hands = UIBezierPath()
        hands.move(to: circleOrigin)
        hands.addArc(withCenter: circleOrigin, radius: 5, startAngle: 0, endAngle: 360, clockwise: true)
        hands.addLine(to: CGPoint(x: (UIScreen.main.bounds.width/2)+90, y: (UIScreen.main.bounds.height/2)+90))
        hands.move(to: circleOrigin)
        hands.addLine(to: CGPoint(x: (UIScreen.main.bounds.width/2)+100, y: (UIScreen.main.bounds.height/2)))
        hands.lineWidth = 6.0
        hands.stroke()
        
    }

    

}
