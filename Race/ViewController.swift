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
    var car2ImageView: CarImageView!
    var car3ImageView: CarImageView!
    var car4ImageView: CarImageView!
    var car5ImageView: CarImageView!
    
    @IBOutlet weak var startLabel: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //CREATE CAR1
        // create the car
        var car1 = Car(theName: "A", theLane: 1, theSpeed: 3.2)
        
        // create the car image view
        car1ImageView = CarImageView(c: car1)
        
        // add the imageview to the view of the app
        view.addSubview(car1ImageView)
        
        
        // REPEAT FOR CAR2
        var car2 = Car(theName: "B", theLane: 2, theSpeed: 3.2)
        car2ImageView = CarImageView(c: car2)
        view.addSubview(car2ImageView)
        
        // REPEAT FOR CAR3
        var car3 = Car(theName: "C", theLane: 3, theSpeed: 3.2)
        car3ImageView = CarImageView(c: car3)
        view.addSubview(car3ImageView)
        
        // REPEAT FOR CAR4
        var car4 = Car(theName: "D", theLane: 4, theSpeed: 3.2)
        car4ImageView = CarImageView(c: car4)
        view.addSubview(car4ImageView)
        
        // REPEAT FOR CAR5
        var car5 = Car(theName: "E", theLane: 5, theSpeed: 3.2)
        car5ImageView = CarImageView(c: car5)
        view.addSubview(car5ImageView)
    }
    
    func hideStartLabel()
    {
        self.startLabel.isHidden = true
    }
    
    func showStartLabel()
    {
        self.startLabel.isHidden = false
    }
    
    @IBAction func startLabelTapped(_ sender: UITapGestureRecognizer)
    {
        view.backgroundColor = UIColor.white
        hideStartLabel()
        
        // animate car1
        UIView.animate(withDuration: car1ImageView.car.speed, delay: 0, animations: {
            self.car1ImageView.center = CGPoint(x: self.car1ImageView.center.x, y: -100) // we want the car to keep the same x value, and we want the car to go off the screen on the y axis
        }, completion: {
            action in
            self.car1ImageView.resetPositionAndSpeed()
            self.startLabel.isHidden = false
            self.view.backgroundColor = UIColor.systemGray3
        })
        
        // animate car2
        UIView.animate(withDuration: car2ImageView.car.speed, delay: 0, animations: {
            self.car2ImageView.center = CGPoint(x: self.car2ImageView.center.x, y: -100) // we want the car to keep the same x value, and we want the car to go off the screen on the y axis
        }, completion: {
            action in
            self.car2ImageView.resetPositionAndSpeed()
            self.showStartLabel()
            self.view.backgroundColor = UIColor.systemTeal
        })
        
        // animate car3
        UIView.animate(withDuration: car3ImageView.car.speed, delay: 0, animations: {
            self.car3ImageView.center = CGPoint(x: self.car3ImageView.center.x, y: -100) // we want the car to keep the same x value, and we want the car to go off the screen on the y axis
        }, completion: {
            action in
            self.car3ImageView.resetPositionAndSpeed()
            self.showStartLabel()
            self.view.backgroundColor = UIColor.systemRed
        })
        
        // animate car4
        UIView.animate(withDuration: car4ImageView.car.speed, delay: 0, animations: {
            self.car4ImageView.center = CGPoint(x: self.car4ImageView.center.x, y: -100) // we want the car to keep the same x value, and we want the car to go off the screen on the y axis
        }, completion: {
            action in
            self.car4ImageView.resetPositionAndSpeed()
            self.showStartLabel()
            self.view.backgroundColor = UIColor.systemGreen
        })
        
        // animate car5
        UIView.animate(withDuration: car5ImageView.car.speed, delay: 0, animations: {
            self.car5ImageView.center = CGPoint(x: self.car5ImageView.center.x, y: -100) // we want the car to keep the same x value, and we want the car to go off the screen on the y axis
        }, completion: {
            action in
            self.car5ImageView.resetPositionAndSpeed()
            self.showStartLabel()
            self.view.backgroundColor = UIColor.systemYellow
        })
    }
    
    //*NOTE: a closure is a function in a function.  For example, you do this when you are making animations.  Remember that you have to write self. in front of some of the things that you put in the closure.
}

