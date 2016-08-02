//
//  PrimeNumbersViewController.swift
//  PrimeNumbers
//
//  Created by Matt Milner on 8/1/16.
//  Copyright © 2016 Matt Milner. All rights reserved.
//

import UIKit

class PrimeNumbersViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var displayLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func computeButtonPressed() {
        
        if (Int(inputTextField.text!) == nil || inputTextField.text! == "" || inputTextField.text!.characters.contains(".")) {
            
            displayLabel.text = "Invalid Input"
            
            
        } else {
            
            let userInput = Int(inputTextField.text!)
            
            if(userInput > 100 || userInput < 0 ){
                displayLabel.text = "Invalid Input"
            } else if (userInput! % 2 == 0 || userInput == 1){
                displayLabel.text = "Not Prime!"
            } else {
                
                var isPrime = true
                for x in (2...userInput!-1).reverse(){
                    print(x)
                    if userInput! % x == 0{
                        isPrime = false
                        displayLabel.text = "Not Prime!"
                    }

                }
                
                if isPrime == true{
                    
                    displayLabel.text = "Prime!"
                    
                    
                }
                
            }

        }
        
        
        
        
    }
    
    
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
