//
//  Profile Picture.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 8/29/23.
//

import SwiftUI

struct ProfilePicture: View {
    let emote: String
    
    //Smaller
    /*
    var body: some View {
        let menuColor = RootController.menuColor
        let profileCircle = Circle()
            .size(width: 70, height: 70)
            .offset(x: 25, y: 25)
        
        ZStack {
            Circle()
                .foregroundColor(.secondary)
                .frame(width: 80, height: 80)
            Circle()
                .stroke(menuColor, style: .init(lineWidth: 7.0))
                .frame(width: 75, height: 75)
            Image(emote)
                .resizable()
                .frame(width: 120, height: 120)
                .offset(y: 25)
                .clipShape(profileCircle)
        }
    }
    */
    //Larger
    ///*
    var body: some View {
        let menuColor = RootController.menuColor
        let profileCircle = Circle()
            .size(width: 85, height: 85)
            .offset(x: 30, y: 30)
        
        ZStack {
            Circle()
                .foregroundColor(.secondary)
                .frame(width: 85, height: 85)
            Image(emote)
                .resizable()
                .frame(width: 140, height: 140)
                .offset(y: 30)
                .clipShape(profileCircle)
            Circle()
                .stroke(menuColor, style: .init(lineWidth: 7.0))
                .frame(width: 90, height: 90)
            //A filled in version of Clip shape for visualization purposes
//            Circle()
//                .frame(width: 150, height: 150)
//                .offset(y: 33)
//                .clipShape(profileCircle)
//                .foregroundStyle(Color.white)
        }
    }
    //*/
}
