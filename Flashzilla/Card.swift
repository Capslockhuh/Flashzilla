//
//  Card.swift
//  Flashzilla
//
//  Created by Jan Andrzejewski on 28/07/2022.
//

import Foundation

struct Card: Codable {
    let prompt: String
    let answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}

class Cards: ObservableObject {
    @Published var cardStack: [Card]
    
    let savePath = FileManager.documentsDirectory.appendingPathComponent("SavedData")
    
    func loadData() {
        do {
            let data = try Data(contentsOf: savePath)
            cardStack = try JSONDecoder().decode([Card].self, from: data)
        } catch {
            cardStack = []
        }
    }

    func saveData() {
        do {
            let data = try JSONEncoder().encode(cardStack)
            try data.write(to: savePath, options: [.atomic, .completeFileProtection])
        } catch {
            print("Saving data has failed.")
        }
    }
        init() {
            do {
                let data = try Data(contentsOf: savePath)
                cardStack = try JSONDecoder().decode([Card].self, from: data)
            } catch {
                cardStack = []
            }
        }
    }
