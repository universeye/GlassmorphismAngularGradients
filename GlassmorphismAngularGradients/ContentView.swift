//
//  ContentView.swift
//  GlassmorphismAngularGradients
//
//  Created by Terry Kuo on 2021/3/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Terry Kuo".uppercased())
                .font(.footnote).fontWeight(.semibold)
            Text("I teach designers and developers")
                .font(.title).bold()
            Text("Awarded 10 certificates since September 2020")
                .font(.footnote)
            
            HStack {
                Image(systemName: "link")
                Text("dzhiphop.com")
            }
            .font(.footnote)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
