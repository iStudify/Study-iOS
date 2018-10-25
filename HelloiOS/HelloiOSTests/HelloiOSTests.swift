//
//  HelloiOSTests.swift
//  HelloiOSTests
//
//  Created by Gavin on 2018/10/9.
//  Copyright © 2018 Gavin Liu. All rights reserved.
//

import XCTest
@testable import HelloiOS

class HelloiOSTests: XCTestCase {
 
    func testMealInitializationSucceeds() {
        // Zero rating
        
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }

}
