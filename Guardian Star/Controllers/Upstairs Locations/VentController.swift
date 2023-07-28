//
//  VentController.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import Foundation

struct VentController {
    var observableObjects: [ObjectType: Object] = [
        .ventUpClose: Object(
            imageName: "Vent - Up Clost",
            imageGlowName: "ObsGlo - Vent Up Close"
        )
    ]
    var interactableObjects: [ObjectType: Object] = [
        .ventUpClose: Object(
            imageName: "Vent - Up Clost",
            imageGlowName: "IntGlo - Vent Up Close"
        )
    ]
    var navigationalObjects: [ObjectType: Object] = [
        .toDaisy: Object(imageName: "Arrow - Up"),
        .back: Object(imageName: "Arrow - Down")
    ]
}
