//
//  FirstNotDuplicateTests.swift
//  FirstNotDuplicateTests
//
//  Created by Tagliabue, L. on 20/03/2019.
//  Copyright © 2019 Tagliabue, Luca. All rights reserved.
//

import XCTest
@testable import FirstNotDuplicate

class FirstNotDuplicateTests: XCTestCase {

    //Given input "abcdcd", retrieves a
    //Given input "cbcd", retrieves b
    //Given input "a", retrieves a
    //Given input "cd", retrieves c
    func testSuccessfulFind() {
        
        let output1 = first_non_duplicate(abcdcd)
        let output2 = first_non_duplicate(cbcd)
        let output3 = first_non_duplicate(a)
        let output4 = first_non_duplicate(cd)
        
        XCTAssert(output1 == "a")
        XCTAssert(output2 == "b")
        XCTAssert(output3 == "a")
        XCTAssert(output4 == "c")
    }
    
    //Given input "aaaa", retrieves 0
    //Given input "cdcd", retrieves 0
    func testSuccessfulNotFind() {
        
        let output1 = first_non_duplicate(aaaa)
        let output2 = first_non_duplicate(cdcd)
        
        XCTAssert(output1 == "0")
        XCTAssert(output2 == "0")
    }
    
    //Given input "b1", retrieves nil
    //Given input "*", retrieves nil
    //Given input "1", retrieves nil
    //Given input "ABCDCD", retrieves nil
    //Given input "CD", retrieves nil
    //Given input "", retrieves nil
    func testFailure() {
        
        let output1 = first_non_duplicate(b1)
        let output2 = first_non_duplicate(special)
        let output3 = first_non_duplicate(one)
        let output4 = first_non_duplicate(ABCDCD)
        let output5 = first_non_duplicate(CD)
        let output6 = first_non_duplicate(empty)
        let output7 = first_non_duplicate(oneSpace)

        XCTAssert(output1 == nil)
        XCTAssert(output2 == nil)
        XCTAssert(output3 == nil)
        XCTAssert(output4 == nil)
        XCTAssert(output5 == nil)
        XCTAssert(output6 == nil)
        XCTAssert(output7 == nil)
    }
}
