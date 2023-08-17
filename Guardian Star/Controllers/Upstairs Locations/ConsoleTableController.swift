//
//  ConsoleTableController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct ConsoleTableController {
    var observableObjects: [ObjectType: Object] = [
        .daisysDoorknob: Object(
            imageName: "Daisy's Doorknob",
            imageGlowName: "ObsGlo - Daisy's Doorknob"
        ),
        .bookshelf: Object(
            imageName: "Bookshelf",
            imageGlowName: "ObsGlo - Bookshelf",
            message:  "I could probably climb up this..."
        ),
        .bookmark: Object(
            imageName: "Bookmark",
            imageGlowName: "ObsGlo - Bookmark",
            message: "I wonder who this bookmark belongs to?"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .bookmark: Object(
            imageName: "Bookmark",
            imageGlowName: "IntGlo - Bookmark"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toVent: Object(imageName: "Arrow - Up"),
        .back: Object(imageName: "Arrow - Down")
    ]
}

//MARK: UI Models - Observeable
struct DaisysDoorknob_ObservableButton: View {
    var body: some View {
        Button("Daisy's Doorknob") {
            print("Daisy's Doorknob tapped!")
        }
        .frame(width: 550, height: 200)
        .background(Color.secondary)
        .foregroundColor(Color.white)
        .offset(x: -400, y: 142)
    }
}

struct Bookshelf_ObservableButton: View {
    var body: some View {
        Button("Bookshelf") {
            print("Bookshelf tapped!")
        }
       .frame(width: 500, height: 600)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: 250, y: -80)
    }
}

struct Bookmark_ObservableButton: View {
    var body: some View {
        Button("Bookmark") {
            print("Bookmark tapped!")
        }
       .frame(width: 300, height: 20)
       .background(Color.secondary)
       .foregroundColor(Color.white)
       .offset(x: 250, y: -5)
    }
}

//MARK: UI Models - Interactable
struct Bookmark_InteractableButton: View {
    var body: some View {
        Button("Bookmark") {
            print("Bookmark tapped!")
        }
        .frame(width: 300, height: 20)
        .background(Color.indigo.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 250, y: -5)
    }
}


//MARK: UI Models - Navigational
struct ToVent_NavigationalButton: View {
    var body: some View {
        Button {
            
        } label: {
            Text("To Vent")
            Image(systemName: "arrow.up")
        }
        .frame(width: 110, height: 70)
        .background(Color.yellow.opacity(0.6))
        .foregroundColor(Color.white)
        .offset(x: 250, y: -80)
    }
}
