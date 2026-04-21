//
//  HabitListViewModel.swift
//  HabitTracker
//
//  Created by Furkan Ceylan on 20.04.2026.
//

import Foundation

@Observable
class HabitListViewModel {
    
    var habits: [Habit] = []
    
    func addHabit(name: String) {
        let newHabit = Habit(name: name)
        habits.append(newHabit)
    }
}
