//
//  Profile Picture.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/29/23.
//

import SwiftUI

struct Profile_Picture: View {
    var emote: String
    
    var body: some View {
        let menuColor = ContentView.menuColor
        let profileCircle = Circle()
            .size(width: 70, height: 70)
            .offset(x: 25, y: 25)
        
        ZStack {
            Circle()
                .foregroundColor(.secondary)
                .frame(width: 80, height: 80)
            Circle()
                .stroke(menuColor, style: .init(lineWidth: 7.0))
                .frame(width: 75, height: 75)
            Image(emote)
                .resizable()
                .frame(width: 120, height: 120)
                .offset(y: 25)
                .clipShape(profileCircle)
        }
    }
}
