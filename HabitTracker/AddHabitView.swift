//
//  AddHabitView.swift
//  HabitTracker
//
//  Created by Furkan Ceylan on 21.04.2026.
//

import SwiftUI

struct AddHabitView: View {
    //MARK: - Properties
    @State private var habitName: String = ""
    @Environment(\.dismiss) var dismiss
    
    var viewModel: HabitListViewModel
    
    //MARK: - Body
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                TextField("Alışkanlık Giriniz", text: $habitName)
                Button("Kaydet") {
                    guard !habitName.isEmpty else { return }
                    viewModel.addHabit(name: habitName)
                    dismiss()
                }
            }
            .padding()
        }
    }
}

#Preview {
    AddHabitView(viewModel: HabitListViewModel())
}
