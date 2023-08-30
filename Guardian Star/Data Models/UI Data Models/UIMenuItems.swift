//
//  UIMenuItem.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/31/23.
//

import SwiftUI

struct UIMenuItem: View, Equatable {
    let imageName: String
    
    var body: some View {
        Button {
            
        } label: {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 40, height: 40)
                .scaledToFill()
                .foregroundColor(.white)
        }
    }
}

struct Back_NavigationalButton: View, Equatable {
    var body: some View {
        Button {
            
        } label: {
            Text("Back")
            Image(systemName: "arrow.uturn.down")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
    }
}

extension View {
    func equatable<Content: View & Equatable>() -> EquatableView<Content> {
      return EquatableView(content: self as! Content)
    }
}
