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
    @Published var inventoryIsOpen = true
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
    //MARK: Parent View - Backyard
    //Backyard:
        .backyard: Location(
            backgroundImageName: "Backyard",
            observeableObjects: [
                //Bedroom Windows
                ObservableObjectButton(
                    tappableArea: .rectangle(
                        offset: CGPoint(x: 483, y: 310),
                        size: CGSize(width: 281, height: 201)),
                    imageName: "Observable Bedroom Windows",
                    emoteName: "Happy Susie",
                    message: "Daisy's bedroom is up there."
                ),
                //Living Room Window
                ObservableObjectButton(
                    tappableArea: .rectangle(
                        offset: CGPoint(x: 636, y: 538),
                        size: CGSize(width: 120, height: 165)),
                    imageName: "Observable Living Room Window",
                    emoteName: "Thoughtful Susie",
                    message: "Someone forgot to close the window.\nDaisy's mama must not be home."
                ),
                //Ivy Vines
                ObservableObjectButton(
                    tappableArea: .custom(
                        offset: CGPoint(x: 170, y: 215),
                        scale: CGFloat(2)),
                    imageName: "Observable Ivy Vines",
                    emoteName: "Happy Susie",
                    message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges."
                ),
                //Hedges
                ObservableObjectButton(
                    tappableArea: .rectangle(
                        offset: CGPoint(x: 405, y: 660),
                        size: CGSize(width: 515, height: 90)),
                    imageName: "Observable Hedges",
                    emoteName: "Thoughtful Susie",
                    message: "The hedges have been looking a little unkempt lately."
                )
            ],
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
