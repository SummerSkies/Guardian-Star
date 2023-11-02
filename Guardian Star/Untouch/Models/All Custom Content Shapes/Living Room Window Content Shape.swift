//
//  Living Room Window Content Shape.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 11/2/23.
//

import Foundation
import SwiftUI

struct View2: View, Equatable {
    let viewID = UUID()
    
    static func == (lhs: View2, rhs: View2) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ZStack {
            
            ScrollView(.horizontal) {
                ZStack {
                    Image("Backyard")
                        .resizable()
                        .scaledToFill()
                        .opacity(0)
                        .overlay {
                            GeometryReader { proxy in
                                let w = proxy.size.width
                                let h = proxy.size.height
                                let topOffset = h / 1.45
                                let leadingOffest = w / 1.62
                                let bottomOffset = h / 12
                                let trailingOffset = w / 3.86
                                
                                Rectangle()
                                    .fill(.green)
                                    .padding(.init(top: topOffset, leading: leadingOffest, bottom: bottomOffset, trailing: trailingOffset))
                                    //.scaleEffect(x: -1, y: 1)
                                    .offset(x: -400, y: 0)
                                
                                Image("Observable Living Room Window")
                                    .resizable()
                                    .scaledToFill()
                                    //.scaleEffect(x: -1, y: 1)
                                    .offset(x: -400, y: 0)
                            }
                        }
                    }
                
            }
        }
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2().equatable()
    }
}
