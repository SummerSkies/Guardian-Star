//
//  LowTable.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LowTableView: View, Equatable {
        let viewID = UUID()
        static func == (lhs: LowTableView, rhs: LowTableView) -> Bool {
            return lhs.viewID == rhs.viewID
        }
        
        let observableObjects = LowTableController().observableObjects
        let interactableObjects = LowTableController().interactableObjects
        let navigationalObjects = LowTableController().navigationalObjects
        
        init() {
              UIScrollView.appearance().bounces = false
           }
        var body: some View {
            ScrollView(.horizontal) {
                ZStack {
                    //Background
                    Rectangle()
                        .foregroundColor(Color.blue)
                        .frame(width: 1000)
                
                    if GameplayController().currentMode == .observe {
                        Twine_ObservableButton()
                    } else if GameplayController().currentMode == .interact {
                        Twine_InteractableButton()
                    }
                }
            }
        }
}

struct LowTableView_Previews: PreviewProvider {
    static var previews: some View {
        LowTableView().equatable()
    }
}
