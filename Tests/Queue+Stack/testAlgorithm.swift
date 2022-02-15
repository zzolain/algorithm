//
//  algorithmTests.swift
//  algorithmTests
//
//  Created by 김진솔 on 2022/02/13.
//

import XCTest
@testable import algorithm

class Test_QueueStack_02: XCTestCase {
    var solution: (([Int], Int) -> Int)!
    
    override func setUpWithError() throws {
        solution = QueueStack_02().solution
    }
    
    func test_01() {
        let priorities = [2, 1, 3, 2]
        let location = 2
        let result = solution(priorities, location)
        XCTAssertEqual(result, 1)
    }
    
    func test_2() {
        let priorities = [1, 1, 9, 1, 1, 1]
        let location = 0
        let result = solution(priorities, location)
        XCTAssertEqual(result, 5)
    }

    func test_3() {
        let priorities = [1, 1, 1, 1, 1, 1]
        let location = 3
        let result = solution(priorities, location)
        XCTAssertEqual(result, 4)
    }
    
    func test_4() {
        let priorities = [1, 1, 9, 1, 1, 1]
        let location = 5
        let result = solution(priorities, location)
        XCTAssertEqual(result, 4)
    }
    
    func test_5() {
        let priorities = [1, 2, 8, 3, 4]
        let location = 4
        let result = solution(priorities, location)
        XCTAssertEqual(result, 2)
    }
}

class Test_QueueStack_03: XCTestCase {
    var solution: ((Int, Int, [Int]) -> Int)!
    
    override func setUpWithError() throws {
        solution = QueueStack_03().solution
    }
    
    func test_01() {
        let bridgeLength = 2
        let weight = 10
        let truckWeights = [7, 4, 5, 6]
        let result = solution(bridgeLength, weight, truckWeights)
        let expectation = 8
        XCTAssertEqual(result, expectation)
    }
    
    func test_02() {
        let bridgeLength = 100
        let weight = 100
        let truckWeights = [10]
        let result = solution(bridgeLength, weight, truckWeights)
        let expectation = 101
        XCTAssertEqual(result, expectation)
    }
    
    func test_03() {
        let bridgeLength = 100
        let weight = 100
        let truckWeights = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
        let result = solution(bridgeLength, weight, truckWeights)
        let expectation = 110
        XCTAssertEqual(result, expectation)
    }
}
