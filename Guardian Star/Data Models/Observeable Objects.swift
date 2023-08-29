//
//  Observable Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/25/23.
//

import Foundation
import Contacts
import Combine

class PlaymodeModel: ObservableObject {
    @Published var currentMode = PlayMode.none
    var gameplayController = GameplayController()
    private var cancellable: AnyCancellable?
    
    init() {
        cancellable = $currentMode.sink {
            self.gameplayController.currentMode = $0
        }
    }
}
