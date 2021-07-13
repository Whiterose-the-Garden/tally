//
//  HabitListView.swift
//  Tally
//
//  Created by Munsu Hwang on 2021-07-11.
//

import SwiftUI
var habits: [Habit] = [Habit(name: "sleep"), Habit(name: "yolo")]

struct HabitlistView: View {
    var body: some View {
        List(habits, id: \.name) { habit in
            HabitView(habit: habit)
        }
    }
}

struct HabitListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HabitlistView()
            HabitlistView()
        }
    }
}
