//
//  ClockContainerView.swift
//  Clock Drawing
//
//  Created by Cole Turner on 2/14/18.
//  Copyright © 2018 Cole Turner. All rights reserved.
//

import UIKit

class ClockContainerView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let origin = CGPoint(x: (bounds.width/2)-150, y:(bounds.height/2)-150)
        let rectangle = CGRect(origin: origin, size: CGSize(width: 300.0, height: 300.0))
        let path = UIBezierPath(roundedRect: rectangle, cornerRadius: CGFloat(8))
        UIColor.gray.setStroke()
        path.stroke()
        UIColor.gray.setFill()
        path.fill()
    }

}
