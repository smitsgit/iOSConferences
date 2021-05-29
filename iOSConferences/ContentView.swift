//
//  ContentView.swift
//  iOSConferences
//
//  Created by Smital on 29/05/21.
//  Copyright © 2021 JetBrains. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(conferencesData) { conf in
                NavigationLink (destination: ConfDetailView(conf: conf)) {
                    VStack(alignment: .leading) {
                        Text("\(conf.name)").font(.headline)
                        Text("\(conf.location)").font(.subheadline)
                    }.navigationBarTitle("Conferences")
                }

            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
