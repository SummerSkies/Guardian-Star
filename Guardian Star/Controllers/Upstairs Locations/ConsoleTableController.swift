//
//  ConsoleTableController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import Foundation

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
