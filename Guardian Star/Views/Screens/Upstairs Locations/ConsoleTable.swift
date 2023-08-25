//
//  Consoletable.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct ConsoleTableView: View, Equatable {
    @Binding var currentMode: PlayMode
    
    let viewID = UUID()
    static func == (lhs: ConsoleTableView, rhs: ConsoleTableView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = ConsoleTableController().observableObjects
    let interactableObjects = ConsoleTableController().interactableObjects
    let navigationalObjects = ConsoleTableController().navigationalObjects
    
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 1000)
                
                if currentMode == .observe {
                    Bookshelf_ObservableButton()
                    DaisysDoorknob_ObservableButton()
                    Bookmark_ObservableButton()
                } else if currentMode == .interact {
                    Bookmark_InteractableButton()
                } else if currentMode == .navigate {
                    ToVent_NavigationalButton()
                }
            }
        }
    }
}
