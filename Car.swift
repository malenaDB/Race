//
//  Car.swift
//  Race
//
//  Created by Malena on 10/26/20.
//  Copyright © 2020 MDB. All rights reserved.
//

import Foundation

class Car
{
    // properties --> things that are stored within the car
    var name: String // Each car has a name, which is a string.
    
    var lane: Int // Each car has a lane, which is an Int.  The lane is where the car appears on the screen.
    
    var speed: Double // Each car has a speed, which is a double.
    
    
    // initializers --> code for how do I create the car
    init() // Inside of the Init, you have to set/define the properties of the car.
    {
        name = "A" // We are setting the name of the car.  The name of the car is whatever you named the car image.
        lane = 1
        speed = 3.2
        getRandomSpeed() // This will update the speed to the random number that is generated in the getRandomSpeed function in the car's methods.
    }
    
    init(theName: String, theLane: Int, theSpeed: Double) // In this Init, we are setting paramaters.
    {
        name = theName
        lane = theLane
        speed = theSpeed
        getRandomSpeed() // This will update the speed to the random number that is generated in the getRandomSpeed function in the car's methods.
    }
    
    
    // methods --> things that the car can do (e.x. honk, break, speed up, slow down, etc.)
    func getRandomSpeed()
    {
        speed = Double.random(in: 2...5) // This will give the car a random speed from between 2 to 5 every single time that the car is called.
    }
}
