//
//  Hedges Navigation.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/9/23.
//

import Foundation
import SwiftUI

struct View51: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: View51, rhs: View51) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Hedges Location")
                        .resizable()
                        .scaledToFill()
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                //let topOffset = h / 1.3
                                let topOffset = h / 20
                                let leadingOffest = w / 1.55
                                //let bottomOffset = h / 20
                                let bottomOffset = h / 1.3
                                let trailingOffset = w / 4
                                
                                
                                Image("Ivy Vines Base")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                                
                                Image("Branch")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                                
                                Image("Hedges Frame")
                                    .resizable()
                                    .scaledToFill()
                                    .scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    .scaleEffect(x: -1, y: 1)
                                    .offset(x: -300, y: 0)
                            }
                        }
                    }
            }
        }
    }
}

struct View51_Previews: PreviewProvider {
    static var previews: some View {
        View51().equatable()
    }
}

