//
//  GuessingGame.swift
//  GuessingGame
//
//  Created by Gao, Kevin on 2018-01-16.
//  Copyright © 2018 Gao, Kevin. All rights reserved.
//

import Foundation

struct GuessingGame{
    // Properties
    var numberToGuess : Int
    var numberGuessed : [Int]
    
    // Initializer
    init() {
        //Generate the random number
        numberToGuess = Int(arc4random_uniform(501))  //Get a number between 0 & 500
        
        //Make an empty list of numbers guessed
        numberGuessed = []
        
    }
    
    
    //Mark : Functions
   mutating func checkGuessGiveFeedback (guess: Int) -> String{
    
        // Add the provided guess to the list of guessed made
        numberGuessed.append(guess)
        
        if guess < numberToGuess{
            return "Guess higher next time"
        }else if guess > numberToGuess{
            return "Guess lower next time"
        }else{
            return "Guess correctly"
        }
    }
}
