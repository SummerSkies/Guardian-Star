//
//  All Locations.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 10/24/23.
//

import Foundation
import SwiftUI

struct CustomButtons {
    
//MARK: BACKYARD
    static let observableBackyardButtons = [
        /*
        //Bedroom Windows
        ObservableObjectButton(
            tappableArea: .rectangle,
            padding: Padding(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0),
            imageName: "Observable Bedroom Windows",
            emoteName: "Happy Susie",
            message: "Daisy's bedroom is up there."
        ),
        //Living Room Window
        ObservableObjectButton(
            tappableArea:.rectangle,
            padding: Padding(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0),
            imageName: "Observable Living Room Window",
            emoteName: "Thoughtful Susie",
            message: "Someone forgot to close the window.\nDaisy's mama must not be home."
        ),
         */
        //Ivy Vines
        ObservableObjectButton(
            tappableArea: .custom,
            padding: Padding(
                top: 1.8,
                leading: 1.42,
                bottom: 16,
                trailing: 8.7),
            imageName: "Observable Ivy Vines",
            emoteName: "Happy Susie",
            message: "I wonder if I could climb that ivy up to Daisy's window.\nI'll have to start at the base, through the hedges."
        ),
        /*
        //Hedges
        ObservableObjectButton(
            tappableArea: .rectangle,
            padding: Padding(
                top: 0,
                leading: 0,
                bottom: 0,
                trailing: 0),
            imageName: "Observable Hedges",
            emoteName: "Thoughtful Susie",
            message: "The hedges have been looking a little unkempt lately."
        )
         */
    ]
    static let interactiveBackyardButtons = [
        ""
    ]
    static let navigationalBackyardButtons = [
        ""
    ]
    
//MARK: HEDGES
}
