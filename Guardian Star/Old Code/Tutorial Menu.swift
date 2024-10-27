//
//  Tutorial Menu.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/18/23.
//

import SwiftUI

struct TutorialView: View {

    var body: some View {
        let menuColor = Color.red
        
        ZStack {
            Color.secondary
            
            Rectangle()
                .frame(width: 300, height: 250)
                .foregroundColor(menuColor)
            
            Rectangle()
                .frame(width: 250, height: 200)
                .foregroundColor(.secondary)
                .overlay(alignment: .topLeading, content: {
                    Text("This is tutorial text.\n\nThis is where I will explain to you Susie's abilities and game modes.")
                        .foregroundColor(.white)
                        .padding()
                })
            
            Button("Tap To Continue") {
                
            }
            .frame(width: 200, height: 50)
            .foregroundColor(.white)
            .offset(y: 70)
            
        }
    }
}

struct TutorialView_Previews: PreviewProvider {
    static var previews: some View {
        TutorialView()
    }
}
