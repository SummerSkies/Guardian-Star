//
//  Reference Object.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/31/23.
//

import SwiftUI
import Contacts
import Combine

class RootController: ObservableObject {
    @Published var currentLocation = allLocations[.backyard]!
    @Published var currentMode = PlayMode.navigate
    
    @Published var inventoryIsOpen = false
    
    @Published var showComment = false
    @Published var currentEmoteName = "Thoughtful Susie"
    @Published var currentMessage = "This is default text."
    
    static let allLocations = AllLocations.locations
    static let menuColor = Color(red: 38 / 250, green: 38 / 250, blue: 38 / 250)
    
    func observeObject(emoteName: String, message: String) {
        showComment = true
        currentEmoteName = emoteName
        currentMessage = message
    }
    
    func navigate(to location: LocationName) {
        currentLocation = RootController.allLocations[location]!
    }
}
