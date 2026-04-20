//
//  Habit.swift
//  HabitTracker
//
//  Created by Furkan Ceylan on 20.04.2026.
//

import Foundation
import SwiftData

@Model
class Habit {
    var name: String
    var createdAt: Date
    var isCompleted: Bool
    
    init(name: String, createdAt: Date = Date()) {
        self.name = name
        self.createdAt = createdAt
        self.isCompleted = false
    }
}
