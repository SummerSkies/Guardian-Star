//
//  GameplayTests.swift
//  Guardian StarTests
//
//  Created by Juliana Nielson on 8/22/23.
//

import XCTest
@testable import Guardian_Star
import SwiftUI

final class GameplayTests: XCTestCase {
    let gameplayController = DummyGameplayController()

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        
    }

    func test_SwitchModeTo_ObserveMode_SwitchesMode() throws {
        gameplayController.switchMode(to: .observe)
        
        XCTAssertTrue(gameplayController.currentMode == .observe)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
