//
//  All Locations.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 10/24/23.
//

import Foundation

struct CustomButtons {
    
//MARK: BACKYARD
    static let observableBackyardButtons = [
        //Bedroom Windows
        ObservableObjectButton(
            tappableArea: .rectangle(
                offset: CGPoint(x: 483, y: 310),
                size: CGSize(width: 281, height: 201)),
            imageName: "Observable Bedroom Windows",
            emoteName: "Happy Susie",
            message: "Daisy's bedroom is up there."
        ),
        //Living Room Window
        ObservableObjectButton(
            tappableArea: .rectangle(
                offset: CGPoint(x: 636, y: 538),
                size: CGSize(width: 120, height: 165)),
            imageName: "Observable Living Room Window",
            emoteName: "Thoughtful Susie",
            message: "Someone forgot to close the window.\nDaisy's mama must not be home."
        ),
        //Ivy Vines
        ObservableObjectButton(
            tappableArea: .custom(
                offset: CGPoint(x: 160, y: 210),
                scale: CGFloat(2)),
            imageName: "Observable Ivy Vines",
            emoteName: "Happy Susie",
            message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges."
        ),
        //Hedges
        ObservableObjectButton(
            tappableArea: .rectangle(
                offset: CGPoint(x: 405, y: 660),
                size: CGSize(width: 515, height: 90)),
            imageName: "Observable Hedges",
            emoteName: "Thoughtful Susie",
            message: "The hedges have been looking a little unkempt lately."
        )
    ]
    static let interactiveBackyardButtons = [
        ""
    ]
    static let navigationalBackyardButtons = [
        ""
    ]
    
//MARK: HEDGES
}
