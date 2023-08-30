//
//  ContentView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

struct ContentView: View, Equatable {
    @StateObject private var gameplayModel = GameplayModel()
    
    let viewID = UUID()
    
    static func == (lhs: ContentView, rhs: ContentView) -> Bool {
        return lhs.viewID == rhs.viewID
    }

    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            //Whatever View:
            BackyardView(currentMode: $gameplayModel.currentMode)
            
            //Dialogue View:
            CommentDialogueBoxView(message: $gameplayModel.message, emote: $gameplayModel.emote)
            
            //Overlay View:
            MainOverlayViews(currentMode: $gameplayModel.currentMode)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().equatable()
    }
}
