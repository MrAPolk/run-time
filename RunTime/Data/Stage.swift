//
//  Stage.swift
//  RunTime
//
//  Created by Andrew Polkinghorn on 14/07/2018.
//  Copyright © 2018 Andrew Polkinghorn. All rights reserved.
//

import Foundation

enum StageType {
    case walk
    case jog
    case sprint
    case cooldown
}

struct Stage {
    let type: StageType
    let minutes: UInt
    let seconds: UInt
}
