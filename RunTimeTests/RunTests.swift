//
//  RunTests.swift
//  RunTests
//
//  Created by Andrew Polkinghorn on 14/07/2018.
//  Copyright © 2018 Andrew Polkinghorn. All rights reserved.
//

import XCTest
@testable import RunTime

class RunTests: XCTestCase {
    
    func testDurationSumsStageSeconds() {
        let firstStage = Stage(type: .cooldown, minutes: 0, seconds: 10)
        let secondStage = Stage(type: .cooldown, minutes: 0, seconds: 20)
        let run = Run(date: Date(), stages: [firstStage, secondStage])
        let expectedDuration = UInt(30)
        XCTAssertEqual(run.duration, expectedDuration)
    }
    
    func testDurationSumsStageMinutes() {
        let firstStage = Stage(type: .cooldown, minutes: 1, seconds: 0)
        let secondStage = Stage(type: .cooldown, minutes: 2, seconds: 0)
        let run = Run(date: Date(), stages: [firstStage, secondStage])
        let expectedDuration = UInt(180)
        XCTAssertEqual(run.duration, expectedDuration)
    }
    
    func testDurationSumsStageMinutesAndSeconds() {
        let firstStage = Stage(type: .cooldown, minutes: 1, seconds: 10)
        let secondStage = Stage(type: .cooldown, minutes: 2, seconds: 20)
        let run = Run(date: Date(), stages: [firstStage, secondStage])
        let expectedDuration = UInt(210)
        XCTAssertEqual(run.duration, expectedDuration)
    }
}
