//
//  CounterExampleTests.swift
//  CounterExampleTests
//
//  Created by Thanapat Sorralump on 23/11/2561 BE.
//  Copyright © 2561 Thanapat Sorralump. All rights reserved.
//

import XCTest
import ReSwift

@testable import CounterExample

class CounterExampleTests: XCTestCase {

    let vc = ViewController()
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class MockStore: Store<AppState> {
    var dispatchCalled = false
    var action: Action?
    override func dispatch(_ action: Action) {
        dispatchCalled = true
        
    }
}
