//
//  MainMenu.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/9/23.
//

import SwiftUI

struct MainMenu: View, Equatable {
    let viewID = UUID()
    static func == (lhs: MainMenu, rhs: MainMenu) -> Bool {
        return lhs.viewID == rhs.viewID
    }
    
    @State private var tutorialIsEnabeled = true
    var checkboxImage: String {
        tutorialIsEnabeled ? "checkmark.square.fill" : "checkmark.square"
    }
    
    var body: some View {
        VStack {
//            HStack {
//                Spacer()
//                
//                //Settings Button
//                Button {
//                   let _ = print("Navigating to Settings...")
//                } label: {
//                    Image(systemName: "gearshape.2.fill")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                }
//                .padding(.trailing, 30)
//            }
            
            Spacer()
            
            //Play button
            Button {
                print("Begining Game!")
            } label: {
                Text("PLAY")
                    .font(.system(size: 70))
            }
            .frame(width: 200, height: 50, alignment: .center)
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 20)))
            .padding(.bottom, 30)
            
//            HStack {
//                //Tutorial Checkbox
//                Button {
//                    tutorialIsEnabeled.toggle()
//                } label: {
//                    Label("Tutorial", systemImage: checkboxImage)
//                        .font(.system(size: 25))
//                }
//                .padding(.leading, 30)
//
//                Spacer()
//
//                //Credits Button
//                Button("Credits") {
//                    print("Navigating to Credits view...")
//                }
//                .font(.system(size: 25))
//                .padding(.trailing, 30)
//            }
        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu().equatable()
    }
}
