//
//  Dialogue Box.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/29/23.
//

import SwiftUI

struct DialogueBox: View {
    let message: String
    let menuColor = RootController.menuColor
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 20.0, height: 20.0))
                .foregroundColor(.secondary)
                .frame(width: 300, height: 120)
                .overlay(alignment: .topLeading, content: {
                    Text(message)
                        .foregroundColor(.white)
                        .padding()
                        .font(.custom("Futura-MediumItalic", size: 16, relativeTo: .headline))
                    //Size 16 for long messages, size 20 for short messages.
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

struct CommentDialogueBoxView_Previews: PreviewProvider {
    static var previews: some View {
        DialogueBox(message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges.")
            .environmentObject(RootController())
    }
}
