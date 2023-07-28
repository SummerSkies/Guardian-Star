//
//  InventoryView.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/20/23.
//

import SwiftUI

struct InventoryView: View {
    var body: some View {
        GeometryReader { geometry in
            let safeAreaHeight = geometry.safeAreaInsets.bottom
            ZStack {
                Color.pink
                Text("Safe Area")
                    .foregroundColor(.white)
            }
            
            ZStack(alignment: .bottom) {
                Color.secondary
            }
            .frame(height: safeAreaHeight + 100)
            .offset(y: safeAreaHeight)
            .edgesIgnoringSafeArea(.all)
            .clipped()
        }
    }
}

struct InventoryView_Previews: PreviewProvider {
    static var previews: some View {
        InventoryView()
    }
}
