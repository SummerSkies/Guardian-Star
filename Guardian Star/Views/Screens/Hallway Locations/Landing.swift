//
//  Landing.swift
//  Guardian Star
//
//  Created by Juliana Nielson on 7/28/23.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        LandingView()
    }
}
