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
        clockContainerView = ClockContainerView(frame: CGRect.zero)
        updateView()
        let time = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { (timer) in
            
            self.clockView.setNeedsDisplay()
        })
        time.fire()

        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        view.setNeedsLayout()
    }
    
   
    
   @objc func updateView() {
       
        
        clockView.backgroundColor = UIColor.clear
        clockContainerView.backgroundColor = UIColor.clear
        
        
        //add subviews
        self.view.addSubview(clockContainerView)
        self.view.addSubview(clockView)
        
        
        //adds constraints
        clockContainerView.translatesAutoresizingMaskIntoConstraints = false
        clockContainerView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        clockContainerView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        clockContainerView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        clockContainerView.heightAnchor.constraint(equalToConstant: 300).isActive = true

        
        clockView.translatesAutoresizingMaskIntoConstraints = false
        clockView.leadingAnchor.constraint(equalTo: clockContainerView.leadingAnchor).isActive = true
        clockView.topAnchor.constraint(equalTo: clockContainerView.topAnchor).isActive = true
        clockView.bottomAnchor.constraint(equalTo: clockContainerView.bottomAnchor).isActive = true
        clockView.trailingAnchor.constraint(equalTo: clockContainerView.trailingAnchor).isActive = true
        
        self.view.backgroundColor = UIColor.white
    }


}

