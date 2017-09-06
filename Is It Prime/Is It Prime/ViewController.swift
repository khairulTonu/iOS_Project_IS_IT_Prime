//
//  ViewController.swift
//  Is It Prime
//
//  Created by tonu on 9/5/17.
//  Copyright © 2017 tonu.app. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userInput: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func submitbtn(_ sender: UIButton) {
        
        if let userInputString = userInput.text{
            let userInputInteger = Int(userInputString)
            
            if let number = userInputInteger {
                
                var isPrime = true
                
                var i=2
                
                if number == 1
                {
                    isPrime = false
                }
                
                else{
                    
                    while i < number
                    {
                        if number%i==0
                        {
                            isPrime=false
                        }
                        i+=1
                    }
                    
                    
                    
                }
                
                if isPrime {
                    resultLabel.text =  "\(number) is Prime!"
                    resultLabel.textColor=UIColor.green
                }
                else {
                    resultLabel.text = "\(number) is not Prime!!"
                    resultLabel.textColor=UIColor.green
                }
                
                
                
            }
            else
            {
                resultLabel.text = "Please enter a positive integer number!!"
                resultLabel.textColor=UIColor.red
                resultLabel.font = UIFont.systemFont(ofSize: 18.0)
            }
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

