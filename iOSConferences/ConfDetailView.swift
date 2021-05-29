//
//  ConfDetailView.swift
//  iOSConferences
//
//  Created by Smital on 29/05/21.
//  Copyright © 2021 JetBrains. All rights reserved.
//

import SwiftUI

struct LinkButton: View {
    var link = ""
    var body: some View {
        Button(action: {
            UIApplication.shared.open(URL(string: self.link)!)
        }) {
            Text("Go to official website")
        }
    }
}


struct ConfDetailView: View {
    var conf: Conference

    var body: some View {
        VStack(alignment: .leading) {
            Text(conf.location).padding(.bottom)
            Text(conf.textDates()).padding(.bottom)
            LinkButton(link: conf.link).padding(.bottom)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
                        maxHeight: .infinity, alignment: .topLeading)
                .padding()
                .navigationBarTitle(conf.name)
    }
}

struct ConfDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ConfDetailView(conf: Conference())
    }
}
