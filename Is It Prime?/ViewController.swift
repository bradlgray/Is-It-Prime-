//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Brad Gray on 7/13/15.
//  Copyright (c) 2015 Brad Gray. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var isItPrime: UILabel!
    
    @IBOutlet weak var enterYourNumber: UITextField!

    @IBAction func CheckPrime(sender: UIButton) {
    
    var enterNumber = enterYourNumber.text.toInt()
        if enterNumber != nil{
            
        } else {
            isItPrime.text = "enter your number"
        }
        
        var number = enterNumber!
        
        var isPrime = true
        if number == 1 {
            isPrime = false
        }
        if number != 2 && number != 1 {
            
            for var i = 2; i < number; i++ {
                if number % i == 0 {
                    isPrime = false
                }
            }
        }
        if isPrime == true {
            isItPrime.text = "\(number) is prime"
        } else {
            isItPrime.text = "\(number) is not prime"
        }
        
    
    
    }
    
    
    
    
    
   

}

