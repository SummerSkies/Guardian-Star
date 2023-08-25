//
//  Consoletable.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct ConsoleTableView: View, Equatable {
    let viewID = UUID()
    static func == (lhs: ConsoleTableView, rhs: ConsoleTableView) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    let observableObjects = ConsoleTableController().observableObjects
    let interactableObjects = ConsoleTableController().interactableObjects
    let navigationalObjects = ConsoleTableController().navigationalObjects
    
    init() {
          UIScrollView.appearance().bounces = false
       }
    var body: some View {
        ScrollView(.horizontal) {
            ZStack {
                //Background
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 1000)
                
                if GameplayController().currentMode == .observe {
                    Bookshelf_ObservableButton()
                    DaisysDoorknob_ObservableButton()
                    Bookmark_ObservableButton()
                } else if GameplayController().currentMode == .interact {
                    Bookmark_InteractableButton()
                } else if GameplayController().currentMode == .navigate {
                    ToVent_NavigationalButton()
                }
            }
        }
    }
}

struct ConsoleTableView_Previews: PreviewProvider {
    static var previews: some View {
        ConsoleTableView().equatable()
    }
}
