//
//  ContentView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

struct ContentView: View, Equatable {
    @StateObject private var playmodeModel = PlaymodeModel()
    
    let viewID = UUID()
    
    static func == (lhs: ContentView, rhs: ContentView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        
        ZStack {
            Color.black
                .ignoresSafeArea()
            //Whatever View:
            BackyardView(currentMode: $playmodeModel.currentMode)
            
            //Overlay View:
            MainOverlayViews(currentMode: $playmodeModel.currentMode)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().equatable()
    }
}
