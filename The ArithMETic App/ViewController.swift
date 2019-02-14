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
    
   
    
//    func timeToLose1Pound(during: String,weight: Double) -> Double{
//
        //    }
    
    @IBAction func calculate(_ sender: Any) {
        let activivty = ActivityTF.text!
        let weight = Double(WeightTF.text!)!
        let time = Int(TimeTF.text!)!
        let energy = ExcerciseCoach.energyConsumed(during: activivty, weight: weight, time: time)
        let hours = ExcerciseCoach.timeToLose1Pound(during: activivty, weight: weight)
        EnergyLBL.text = String(energy)
        TimeLBL.text = String(hours)
    }
    
    @IBAction func clear(_ sender: Any) {
        EnergyLBL.text = String("\(0")
        TimeLBL.text = String(0)
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


