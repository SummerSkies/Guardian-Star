//
//  Gameplay Model.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/30/23.
//

import SwiftUI
import Contacts
import Combine

class GameplayModel: ObservableObject {
    @Published var currentMode = PlayMode.observe
    @Published var message = "This is dialogue text.\n\nThis is where susie will tell you what she knows about objects."
    @Published var emote = "Thoughtful Susie"
    
    var gameplayController = GameplayController()
    private var cancellable: AnyCancellable?
    
    init() {
        cancellable = $currentMode.sink {
            self.gameplayController.currentMode = $0
        }
        cancellable = $message.sink {
            self.gameplayController.message = $0
        }
        cancellable = $emote.sink {
            self.gameplayController.emote = $0
        }
    }
}
