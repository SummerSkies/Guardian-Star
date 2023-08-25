//
//  LivingRoomWindow.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LivingRoomWindowView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: LivingRoomWindowView, rhs: LivingRoomWindowView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: 1000)
                
                if currentMode == .observe {
                    LivingRoomWindowFrame_ObservableButton()
                    IvyVinesStalk_ObservableButton()
                } else if currentMode == .navigate {
                    ToBedroomWindow_NavigationalButton()
                    ToLivingRoom_NavigationalButton()
                }
            }
        }
    }
}
