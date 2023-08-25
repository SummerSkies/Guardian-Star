//
//  LivingRoomWindow.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LivingRoomWindowView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: LivingRoomWindowView, rhs: LivingRoomWindowView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.gray)
                    .frame(width: 1000)
                
                if GameplayController().currentMode == .observe {
                    LivingRoomWindowFrame_ObservableButton()
                    IvyVinesStalk_ObservableButton()
                } else if GameplayController().currentMode == .navigate {
                    ToBedroomWindow_NavigationalButton()
                    ToLivingRoom_NavigationalButton()
                }
            }
        }
    }
}

struct LivingRoomWindowView_Previews: PreviewProvider {
    static var previews: some View {
        LivingRoomWindowView().equatable()
    }
}
