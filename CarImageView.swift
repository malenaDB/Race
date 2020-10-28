//
//  CarImageView.swift
//  Race
//
//  Created by Malena on 10/27/20.
//  Copyright © 2020 MDB. All rights reserved.
//

import Foundation
import UIKit // don't forget to import the UIKit!

class CarImageView: UIImageView // give your class a name, and make it a subclass of an already existing class --> here, the name of the class is CarImageView, and it is a subclass of UIImageView
{
    var car: Car
    
    init(c: Car) // here, we are making an initializer where we pass in a Car
    {
        car = c // we are setting the variable car (above on line 14) to be whatever we put in as c in this initializer (you'll get a red error, but just click the fix button, and it will create the required intializer that is below)
        super.init(image: UIImage(named: car.name)) //here, you have to do the initializer for the UIImageView (which is an initializer that already exists as part of Swift).  you will get an error if you do not do this step!
        
        let height = UIScreen.main.bounds.height // this will automatically figure out how tall is the screen of the device that you are using the app on
        self.frame = CGRect(x: 75 * car.lane, y: Int(height) - 100, width: 50, height: 100) // this puts the car at the bottom of the screen and makes it the proper size for how we want the app to be!
    }
    
    func resetPositionAndSpeed() // this function will allow us to reset the cars to the beginning after the race is over
    {
        self.center = CGPoint(x: center.x, y: UIScreen.main.bounds.height - 100)
        self.car.getRandomSpeed() // we will get a new random speed for each car so that there is a different winner for each race
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
