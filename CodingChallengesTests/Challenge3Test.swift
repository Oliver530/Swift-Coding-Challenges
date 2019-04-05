//
//  Challenge3Test.swift
//  CodingChallengesTests
//
//  Created by Oliver Gerhardt on 05.04.19.
//  Copyright © 2019 Oliver Gerhardt. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class Challenge3Test: XCTestCase {
    
    var sut: Challenge3!

    override func setUp() {
        sut = Challenge3()
    }

    func test_abca_abca_isTrue() {
        let a = "abca"
        let b = "abca"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(same)
    }
    
    func test_abc_cba_isTrue() {
        let a = "abc"
        let b = "cba"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(same)
    }
    
    func test_a1b2_b1a2_isTrue() {
        let a = "a1 b2"
        let b = "b1 a2"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(same)
    }
    
    func test_abc_abca_isFalse() {
        let a = "abc"
        let b = "abca"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(!same)
    }
    
    func test_abc_Abc_isFalse() {
        let a = "abc"
        let b = "Abc"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(!same)
    }
    
    func test_abc_cbAa_isFalse() {
        let a = "abc"
        let b = "cbAa"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(!same)
    }
    
    func test_abcc_abca_isFalse() {
        let a = "abcc"
        let b = "abca"
        let same = sut.sameCharacters(a: a, b: b)
        
        assert(!same)
    }

}
