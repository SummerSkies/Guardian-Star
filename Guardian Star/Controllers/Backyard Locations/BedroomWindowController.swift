//
//  BedroomWindowController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/27/23.
//

import SwiftUI

struct BedroomWindowController {
    var observableObjects: [ObjectType: Object] = [
        .bedroomWindowFrame: Object(
            imageName: "Bedroom Window Frame",
            imageGlowName: "ObsGlo - Bedroom Window Frame",
            message: "This is Daisy's window.\nI can see my shelf from here!"
        ),
        .ivyVinesTips: Object(
            imageName: "Ivy Vines - Tips",
            imageGlowName: "ObsGlo - Ivy Vines Tips",
            message: "I can't go further up, but I could climb back down."
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .back: Object(imageName: "Arrow - Down")
    ]
}

//MARK: UI Models - Observeable
struct BedroomWindowFrame_ObservableButton: View {
    var body: some View {
        Button("Bedroom Window Frame") {
            
        }
        .frame(width: 600, height: 800)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -200, y: 0)
    }
}

struct IvyVinesTips_ObservableButton: View {
    var body: some View {
        Button("Ivy Vines Tips") {
            
        }
        .frame(width: 350, height: 300)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: 325, y: 250)
    }
}
