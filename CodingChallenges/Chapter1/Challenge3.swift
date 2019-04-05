//
//  Challenge3.swift
//  CodingChallenges
//
//  Created by Oliver Gerhardt on 05.04.19.
//  Copyright © 2019 Oliver Gerhardt. All rights reserved.
//

import Foundation

class Challenge3 {
    
    func sameCharacters(a: String, b: String) -> Bool {
        return a.sorted() == b.sorted()
    }
    
    
    // MARK: Old
    
    func xSameCharacters(a: String, b: String) -> Bool {
        let aChars = a.map({ $0 })
        let bChars = b.map({ $0 })
        
        let aCharsSorted = aChars.sorted()
        let bCharsSorted = bChars.sorted()
        
        return aCharsSorted == bCharsSorted
    }
    
}
