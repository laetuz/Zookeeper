//
//  ContentView.swift
//  Zookeeper
//
//  Created by Ryo Martin on 14/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Zoo")
            List {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
            }.listStyle(InsetGroupedListStyle())
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
