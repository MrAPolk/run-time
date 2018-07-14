//
//  Run.swift
//  RunTime
//
//  Created by Andrew Polkinghorn on 14/07/2018.
//  Copyright © 2018 Andrew Polkinghorn. All rights reserved.
//

import Foundation

private let kSecondsInAMinute: UInt = 60

struct Run {
    let date: Date
    let stages: [Stage]
    var completed = false
    var duration: UInt {
        let stageDurations = stages.map { stage in stage.seconds + (stage.minutes * kSecondsInAMinute) }
        return stageDurations.reduce(0, +)
    }
    
    init(date: Date, stages: [Stage]) {
        self.date = date
        self.stages = stages
    }
}
