//
//  Dialogue Box.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/18/23.
//

import SwiftUI

struct CommentDialogueBoxView: View {
    @Binding var message: String
    @Binding var emote: String
    
    var body: some View {
        
        GeometryReader { geometry in
            let areaWidth = geometry.size.width
            
            Rectangle()
                .frame(width: areaWidth, height: 160, alignment: .top)
                .foregroundColor(.clear)
                .overlay {
                    Dialogue_Box(message: message)
                        .offset(x: 35, y: 0)
                    Profile_Picture(emote: emote)
                        .offset(x: -143, y: 35)
                }
        }
    }
}
