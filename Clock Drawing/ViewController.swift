//
//  ViewController.swift
//  Clock Drawing
//
//  Created by Cole Turner on 2/12/18.
//  Copyright © 2018 Cole Turner. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {
    
    
    var clockView: ClockView!
    var clockContainerView: ClockContainerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        clockView = ClockView()
        clockContainerView = ClockContainerView(frame: CGRect(x: view.bounds.midX, y: view.bounds.midY, width: 300, height: 300))
        
        clockView.backgroundColor = UIColor.clear
        clockContainerView.backgroundColor = UIColor.clear
    
        
        //add subviews 
        self.view.addSubview(clockContainerView)
        self.view.addSubview(clockView)


        //adds constraints
        clockContainerView.translatesAutoresizingMaskIntoConstraints = false
        clockContainerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        clockContainerView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        clockContainerView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        clockContainerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
        clockView.translatesAutoresizingMaskIntoConstraints = false
        clockView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        clockView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        clockView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        clockView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true

        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

