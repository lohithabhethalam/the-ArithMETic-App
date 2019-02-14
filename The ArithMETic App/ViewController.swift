//
//  ViewController.swift
//  The ArithMETic App
//
//  Created by Bhethalam,Lohitha on 2/14/19.
//  Copyright © 2019 Northwest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var ActivityTF: UITextField!
    
    @IBOutlet weak var WeightTF: UITextField!
    
    
    @IBOutlet weak var TimeTF: UITextField!
    
    
    @IBOutlet weak var EnergyLBL: UILabel!
    
    
    @IBOutlet weak var TimeLBL: UILabel!
    
//    func energyConsumed(during: String,weight: Double,time: Int) -> Double{
//        let activity = ActivityTF.text!
//        let weight = Double(WeightTF.text!)!
//        let time = Int(TimeTF.text!)!
//        var MET:Double
//        if activity == "Bicycling"{
//            MET = 8.0
//        }
//        else if activity == "Jumping rope"{
//            MET = 12.3
//        }
//        else if activity == "Running - slow"{
//            MET = 9.8
//        }
//        else if activity == "Running - fast"{
//            MET = 23.0
//        }
//        else if activity == "Tennis"{
//            MET = 8.0
//        }
//        else {
//            MET = 5.8
//        }
//
//        let energyconsumed = (MET * 3.5 * weight/200 ) * Double(time)
//        return energyconsumed
//    }
//    func timeToLose1Pound(during: String,weight: Double) -> Double{
//
//    }
    
    @IBAction func calculate(_ sender: Any) {
        let activity = ActivityTF.text!
               let weight = Double(WeightTF.text!)!
        let time = Int(TimeTF.text!)!
        var MET:Double
               if activity == "Bicycling"{
                   MET = 8.0
              }
               else if activity == "Jumping rope"{
                  MET = 12.3
            }
               else if activity == "Running - slow"{
                  MET = 9.8
                }
                else if activity == "Running - fast"{
                    MET = 23.0
                }
               else if activity == "Tennis"{
                   MET = 8.0
               }
               else {
                   MET = 5.8
                }
        let energyconsumed = (MET * 3.5 * (weight/2.2)/200 )
        let energy = energyconsumed * Double(time)
        let timetolose = 3500/energyconsumed
        EnergyLBL.text = String("\(energy) cal")
        TimeLBL.text = String("\(timetolose) minutes")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

