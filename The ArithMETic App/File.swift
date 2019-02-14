//
//  File.swift
//  The ArithMETic App
//
//  Created by Bhethalam,Lohitha on 2/14/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import Foundation

struct ExcerciseCoach {
    static let sports:[String:Double] = ["Bicycling":8.0, "Jumping rope":12.3,"Running - slow": 9.8, "Running - fast":23.0,"Tennis":8.0,"Swimming":5.8]
    
  static  func energyConsumed(during: String,weight: Double,time: Int) -> Double{
       // let MET =
        let energyconsumed = (ExcerciseCoach.sports[during]! * 3.5 * (weight/2.2)/200 ) * Double(time)
    
        return energyconsumed
    }
     static   func timeToLose1Pound(during: String,weight: Double) -> Double{
   
            let energy = (ExcerciseCoach.sports[during]! * 3.5 * (weight/2.2)/200 )
    let time = 3500/energy
    
            return time
}
}
