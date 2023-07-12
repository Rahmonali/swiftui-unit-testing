//
//  ImplementUnitTestingTests.swift
//  ImplementUnitTestingTests
//
//  Created by Rahmonali on 10/07/23.
//

import XCTest
@testable import ImplementUnitTesting

final class ImplementUnitTestingTests: XCTestCase {
    
    var simpleMath: SimpleMath!
    
    override func setUp() {
        simpleMath = SimpleMath()
    }
    
    override func tearDown() {
        simpleMath = nil
    }
    
    func test_calculateTotal_salesTaxTwentyPercent() {
        // Given - Arrange
        let items = [
            CheckoutItem(name: "iPhone 14 Pro 256", price: 1300),
            CheckoutItem(name: "MacBook Pro M3", price: 1700)
        ]
        let taxPercentage = 10
        
        // When - Act
        let totalToPay = calculateTotal(items: items, localTaxPercent: taxPercentage)
        
        // Then - Assert
        XCTAssertEqual(totalToPay, 3300)
        
    }
    
    func test_addTen_addTenWorks() {
        // Given - Arrange
        var expected: Int = 0
        
        // When - Act
        expected = simpleMath.addTen(number: 10)
        
        // Then - Assert
        XCTAssert(expected == 20, "This should be 20")
        XCTAssertTrue(expected == 20)
        XCTAssertEqual(expected, 20, "This should be 20")
    }
    
    func test_beSquare_beSquareSucceed() {
        // Given - Arrange
        var expected: Int = 0
        
        // When - Act
        expected = simpleMath.beSquare(9)
        
        // Then - Assert
        XCTAssertEqual(expected, 81)
    }
    
    
}
