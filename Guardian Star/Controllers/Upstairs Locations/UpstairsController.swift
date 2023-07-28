//
//  Upstairs Objects.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/23/23.
//

import Foundation

struct UpstairsController {
    var observableObjects: [ObjectType: Object] = [
        .rectangleblock: Object(
            imageName: "Rectangle Block",
            imageGlowName: "ObsGlo - Rectangle Block",
            message: "The box this block belongs to isn't even nearby.\nDaisy... What happened?"
        ),
        .consoleTable: Object(
            imageName: "Console Table",
            imageGlowName: "ObsGlo - Console Table",
            message: "I could probably climb atop this console table with something to stand on.\nOr maybe I make a tower from something?"
        ),
        .vent: Object(
            imageName: "Vent",
            imageGlowName: "ObsGlo - Vent"
        ),
        .daisysDoor: Object(
            imageName: "Daisy's Door",
            imageGlowName: "ObsGlo - Daisy's Door"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .rectangleblock: Object(
            imageName: "Rectangle Block",
            imageGlowName: "IntGlo - Rectangle Block"
        ),
        .consoleTable: Object(
            imageName: "Console Table",
            imageGlowName: "IntGlo - Console Table"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .vent: Object(imageName: "Vent")
    ]
}
