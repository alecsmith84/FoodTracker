//
//  FoodTrackerTake2Tests.swift
//  FoodTrackerTake2Tests
//
//  Created by Alec Smith on 4/17/19.
//  Copyright © 2019 Alec Smith. All rights reserved.
//

import XCTest
@testable import FoodTrackerTake2

class FoodTrackerTake2Tests: XCTestCase {
    //MARK: Meal Class Tests
    
    // confirm that meal init returns a Meal obj
    func testMealInitializationSucceeds() {
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // confirm meal init returns niil when passed neg or empty
    func testMealInitializationFails() {
        // negative
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // large
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // empty
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
