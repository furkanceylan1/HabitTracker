//
//  ContentView.swift
//  HabitTracker
//
//  Created by Furkan Ceylan on 20.04.2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // MARK: Properties-
    @State private var habitViewModel = HabitListViewModel()
    @State private var showAddHabitView: Bool = false

    // MARK: Body-
    var body: some View {
        NavigationStack {
            List {
                ForEach(habitViewModel.habits) { habit in
                    Text(habit.name)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        showAddHabitView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                    
                }
            }
            .navigationTitle("Alışkanlıklarım")
            .navigationBarTitleDisplayMode(.inline)
            .sheet(isPresented: $showAddHabitView) {
                AddHabitView(viewModel: habitViewModel)
            }
        }
    }
}

#Preview {
    ContentView()
}
