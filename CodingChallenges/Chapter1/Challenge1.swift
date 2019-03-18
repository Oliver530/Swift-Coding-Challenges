//
//  Challenge1.swift
//  CodingChallenges
//
//  Created by Oliver Gerhardt on 18.03.19.
//  Copyright © 2019 Oliver Gerhardt. All rights reserved.
//

import Foundation

class Challenge1 {
    
    // Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.
    
    func hasUniqueLetters(string: String) -> Bool {
        var charMap = [Character:Int]()
        
        for char in string {
            let count = charMap[char] ?? 0
            if count > 0 {
                return false
            }
            charMap[char] = count + 1
        }
        
        return true
    }
    
    
    // MARK: Hint
    
    func proposedSolution(input: String) -> Bool {
        return Set(input).count == input.count
    }
    
}
