//
//  Bedroom Windows Content Shape.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/2/23.
//

import Foundation
import SwiftUI

struct View1: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: View1, rhs: View1) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Backyard")
                        .resizable()
                        .scaledToFill()
                        .scaleEffect(x: -1, y: 1)
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / 2.55
                                let leadingOffest = w / 2.14
                                let bottomOffset = h / 3.1
                                let trailingOffset = w / 4
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                
                                Image("Observable Bedroom Windows")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                            }
                        }
                    }
                
            }
        }
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1().equatable()
    }
}
