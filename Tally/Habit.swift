//
//  Habit.swift
//  Tally
//
//  Created by Munsu Hwang on 2021-07-11.
//

import Foundation

struct Habit {
    var name: String
    var tracked: [Date] = []
    init(name: String) {
        self.name = name
    }
}
