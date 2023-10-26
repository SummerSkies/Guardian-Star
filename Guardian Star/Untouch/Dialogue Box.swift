//
//  Dialogue Box.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/29/23.
//

import SwiftUI

struct Dialogue_Box: View {
    var message: String
    let menuColor = ContentView.menuColor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 20.0, height: 20.0))
                .foregroundColor(.secondary)
                .frame(width: 300, height: 120)
                .overlay(alignment: .topLeading, content: {
                    Text(message)
                        .foregroundColor(.white)
                        .padding()
                        .font(.callout)
                })
            
            RoundedRectangle(cornerSize: CGSize(width: 20.0, height: 20.0))
                .stroke(menuColor, style: .init(lineWidth: 7.0))
                .frame(width: 300, height: 120)
            
            Text("Tap to continue")
                .italic()
                .foregroundColor(.white)
                .offset(x: 0, y: 75)
        }
    }
}
