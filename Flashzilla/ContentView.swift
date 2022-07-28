//
//  ContentView.swift
//  Flashzilla
//
//  Created by Jan Andrzejewski on 26/07/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        CardView(card: Card.example)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
