//
//  HabitView.swift
//  Tally
//
//  Created by Munsu Hwang on 2021-07-12.
//

import SwiftUI

struct HabitView: View {
    var habit: Habit = Habit(name: "sleep")
    var body: some View {
        HStack {
            Text(habit.name)
            Spacer()
            TrackedList(habit: habit)
        }
    }
}



struct TrackedList: View {
    var habit: Habit
    static let trackedLength = 14
    static var format: DateFormatter {
      let df = DateFormatter()
      df.dateFormat = "D M YYYY"
      return df
    }
    
    init(habit: Habit) {
        self.habit = habit
    }
    
    var body: some View {
        var j = 0
        HStack {
            ForEach(0..<TrackedList.trackedLength) { i in
                //if j < habit.tracked.length && sameDate(d1: habit.tracked[j], d2: ) {
                //} else {
                //}
                Text("·")
            }
        }
    }

    func sameDate(d1: Date, d2: Date) -> Bool {
        let df = TrackedList.format
        return df.string(from: d1) == df.string(from: d2)
    }
}

struct HabitView_Previews: PreviewProvider {
    static var previews: some View {
        HabitView()
    }
}
