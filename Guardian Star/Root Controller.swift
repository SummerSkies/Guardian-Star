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
    @Published var showComment = false
    @Published var inventoryIsOpen = false
    @Published var currentEmoteName = "Thoughtful Susie"
    @Published var currentMessage = "This is default text."
    @Published var currentMode = PlayMode.inspect
    @Published var currentLocation = allLocations[.backyard]!
    
    
//    var gameplayController = GameplayController()
//    private var cancellable: AnyCancellable?
//
//    init() {
//        cancellable = $currentMode.sink {
//            self.gameplayController.currentMode = $0
//        }
//        cancellable = $message.sink {
//            self.gameplayController.message = $0
//        }
//        cancellable = $emote.sink {
//            self.gameplayController.emote = $0
//        }
//    }
    
    func observeObject(emoteName: String, message: String) {
        showComment = true
        currentEmoteName = emoteName
        currentMessage = message
    }
    
    static let allLocations: [LocationName: Location] = [
    //Backyard:
        .backyard: Location(
            backgroundImageName: "Backyard",
            observeableObjects: CustomButtons.observableBackyardButtons,
            defaultImageNames: [
                "Bedroom Windows",
                "Living Room Window",
                "Ivy Vines",
                "Hedges"
            ]
        ),
    //Hedges:
    ]
}
