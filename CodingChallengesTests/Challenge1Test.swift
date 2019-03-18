//
//  Challenge1Test.swift
//  CodingChallengesTests
//
//  Created by Oliver Gerhardt on 18.03.19.
//  Copyright © 2019 Oliver Gerhardt. All rights reserved.
//

import XCTest
@testable import CodingChallenges

class Challenge1Test: XCTestCase {
    
    var sut: Challenge1!

    override func setUp() {
        sut = Challenge1()
    }
    
    
    // MARK: OK

    func testExample() {
        let test = "No duplicates"
        let ok = sut.hasUniqueLetters(string: test)
        assert(ok, "'No duplicates' failed")
    }
    
    func testExample2() {
        let test = "abcdefghijklmnopqrstuvwxyz"
        let ok = sut.hasUniqueLetters(string: test)
        assert(ok, "'abcdefghijklmnopqrstuvwxyz' failed")
    }
    
    func testExample3() {
        let test = "AaBbCc"
        let ok = sut.hasUniqueLetters(string: test)
        assert(ok, "'AaBbCc' failed")
    }
    
    
    // MARK: Fail
    
    func testFail() {
        let test = "Hello, world"
        let ok = sut.hasUniqueLetters(string: test)
        assert(!ok, "'Hello, world' failed")
    }
    
    func testFail2() {
        let test = "aba"
        let ok = sut.hasUniqueLetters(string: test)
        assert(!ok, "'aba' failed")
    }

}
