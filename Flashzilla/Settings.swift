//
//  Settings.swift
//  Flashzilla
//
//  Created by Jan Andrzejewski on 31/07/2022.
//
//TODO: finish settings
import SwiftUI

struct Settings: View {
    @StateObject var selectedSettings = SelectedSettings()
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Toggle("Haptic feedback", isOn: $selectedSettings.haptics)
                }
            }
            .navigationTitle("Settings")
        }
    }
}

class SelectedSettings: ObservableObject {
    @Published var haptics = false
    @Published var hapticsForSucces = true
    @Published var buttons = false
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
