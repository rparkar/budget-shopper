//
//  CalculateHours.swift
//  budget-shopper
//
//  Created by Rehan Parkar on 2017-11-12.
//  Copyright © 2017 Rehan Parkar. All rights reserved.
//
//this class has a func whihc excepts price of item and hourly wage and returns an Int which is rounded up to the higher value

import Foundation

class CalculateHours {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int{
        
        //ceil rounds up the value to next number
        return Int(ceil(price / wage))
        
    }
    
}

