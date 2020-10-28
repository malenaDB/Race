//
//  ViewController.swift
//  Race
//
//  Created by Malena on 10/26/20.
//  Copyright © 2020 MDB. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var car1ImageView: CarImageView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // create the car
        var car1 = Car(theName: "A", theLane: 1, theSpeed: 3.2)
        
        // create the car image view
        car1ImageView = CarImageView(c: car1)
        
        // add the imageview to the view of the app
        view.addSubview(car1ImageView)
    }
    
    
    @IBAction func startRaceButton(_ sender: UIButton)
    {
        UIView.animate(withDuration: car1ImageView.car.speed, delay: 0, animations: {
            self.car1ImageView.center = CGPoint(x: self.car1ImageView.center.x, y: -100) // we want the car to keep the same x value, and we want the car to go off the screen on the y axis
        }, completion: {
            action in
            self.car1ImageView.resetPositionAndSpeed()
        })
    }
    
    //*NOTE: a closure is a function in a function.  For example, you do this when you are making animations.  Remember that you have to write self. in front of some of the things that you put in the closure.
}

