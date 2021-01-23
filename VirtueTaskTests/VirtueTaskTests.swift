//
//  VirtueTaskTests.swift
//  VirtueTaskTests
//
//  Created by Huseyin Yolasigmazoglu on 23/01/2021.
//

import XCTest
@testable import VirtueTask

class VirtueTaskTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testVirtueTask_OneLetterStringProvided_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "A")
        
        XCTAssertEqual(result, true)
    }
    
    func testVirtueTask_WhenNonAlphanumericCharacterProvided_ShouldReturnFalse()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: ".")
        
        XCTAssertEqual(result, false)
    }
    
    func testVirtueTask_WhenTwoLengthSameCharacterProvided_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "ZZ")
        
        XCTAssertEqual(result, true)
    }
    
    func testVirtueTask_WhenRealPolindromicWord_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "aXCXa")
        
        XCTAssertEqual(result, true)
    }
    
    func testVirtueTask_WhenRealPolindromicWordwithOneOddCharacter_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "AABBCCx")
        
        XCTAssertEqual(result, true)
    }
    
    func testVirtueTask_WhenRealPolindromicWordwithOneOddCharacter_ShouldReturnFalse()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "AABBCCxy")
        
        XCTAssertEqual(result, false)
    }
    
    func testVirtueTask_WhenRealPolindromicSentence_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "Pot spot")
        
        XCTAssertEqual(result, true)
    }
    
    
    func testVirtueTask_WhenRealPolindromicSentenceWithDot_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "Pot spot.")
        
        XCTAssertEqual(result, true)
    }
    
    func testVirtueTask_WhenRealLongPolindromicSentence_ShouldReturnTrue()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "Pot spot Pot spotPot spotPot spotPot spotPot spotPot spotPot spotPot spotPot spot")
        
        XCTAssertEqual(result, true)
    }
    
    func testVirtueTask_WhenRealLongNonPolindromicSentence_ShouldReturnFalse()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "ABC DEFGGGGGGG HHHHHHHHHHHHHHH kklsdskk kdls;dls;lds ")
        
        XCTAssertEqual(result, false)
    }
    
    func testVirtueTask_WhenEmtyString_ShouldReturnFalse()  {
        
        let task = VirtueTask()
        
        let result = task.checkAnyPermutationisPalindrom(input: "")
        
        XCTAssertEqual(result, false)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
