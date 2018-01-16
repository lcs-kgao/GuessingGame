//
//  ViewController.swift
//  GuessingGame
//
//  Created by Gao, Kevin on 2018-01-13.
//  Copyright © 2018 Gao, Kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK : Outlets
    @IBOutlet weak var numberGuessed: UITextField!
    
    // MARK : Properties (variables)
    
    // MARK : Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK : Actions
  
    @IBAction func guessSubmitted(_ sender: Any) {
        
        //print the number that was guessed
        print(numberGuessed.text)
        
        //Use a guard statement to bind to a non-optional variable
        guard let inputGiven = numberGuessed.text else{
            // If input was nil, stop and return (exit) the function
            return
            
        }
        //Use a guard statement to attempt to create an integer
        guard let intergerGiven = Int(inputGiven) else {
            // If the input was text (e.g. : "five") we can't make an integer, so stop and return (exit) the function
            return
        }
        
        //Print the number that was guessed
        print(intergerGiven)
    }
    
    // MARK : Custom function(s)

}

