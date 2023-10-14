//
//  AnimalGroup.swift
//  Zookeeper
//
//  Created by Ryo Martin on 14/10/23.
//

import Foundation

struct AnimalGroup: Identifiable {
    var id = UUID()
    var groupName: String
    var animals: [Animal]
}
