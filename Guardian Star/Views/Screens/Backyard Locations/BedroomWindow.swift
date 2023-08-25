//
//  BedroomWindow.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct BedroomWindowView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: BedroomWindowView, rhs: BedroomWindowView) -> Bool {
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
                    .foregroundColor(Color.purple)
                    .frame(width: 1000)
                
                if GameplayController().currentMode == .observe {
                    //bedroomWindowFrame ivyVinesTips
                    BedroomWindowFrame_ObservableButton()
                    IvyVinesTips_ObservableButton()
                }
            }
        }
    }
}

struct BedroomWindowView_Previews: PreviewProvider {
    static var previews: some View {
        BedroomWindowView().equatable()
    }
}
