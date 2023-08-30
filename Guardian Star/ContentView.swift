//
//  ContentView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

struct ContentView: View, Equatable {
    @StateObject private var gameplayModel = GameplayModel()
    @StateObject private var locationModel = LocationModel()
    
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
            if locationModel.showComment == true {
                CommentDialogueBoxView(message: $gameplayModel.message, emote: $gameplayModel.emote, showComment: $locationModel.showComment)
            }
            
            //Overlay View:
            MainOverlayViews(currentMode: $gameplayModel.currentMode, showComment: $locationModel.showComment)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().equatable()
    }
}
