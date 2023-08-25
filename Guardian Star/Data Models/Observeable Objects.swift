//
//  Observeable Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/25/23.
//

import Foundation

class PlaymodeModel: ObservableObject {
    var gameplayController = GameplayController()
    
    func switchGameMode(to mode: PlayMode) {
        gameplayController.currentMode = mode
        self.objectWillChange.send()
    }
}
