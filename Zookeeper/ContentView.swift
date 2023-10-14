//
//  ContentView.swift
//  Zookeeper
//
//  Created by Ryo Martin on 14/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var animalText: String = ""
    @State var animals = [
        Animal(name: "Cat"),
        Animal(name: "Dog"),
        Animal(name: "Monkey"),
    ]

    
    var body: some View {
        VStack {
            Text("Zoo")
            List{
                ForEach(animalGroups){
                    animalGroup in
                    Section(header: Text(animalGroup.groupName)) {
                        ForEach(animalGroup.animals) {
                            animal in Text(animal.name)
                        }
                    }
                }
                ForEach(animals){
                    animal in Text(animal.name)
                }
            }.listStyle(InsetGroupedListStyle())
            
            //Added logic to input animal name
            TextField("Animal name", text: $animalText)
            Button("Add"){
                animals.append(Animal(name: animalText))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
