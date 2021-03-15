//
//  ContentView.swift
//  GlassmorphismAngularGradients
//
//  Created by Terry Kuo on 2021/3/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            AngularGradient(gradient: Gradient(colors:
                                                [
                                                    Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)),
                                                    Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),
                                                    Color(#colorLiteral(red: 0.4491932392, green: 0.7662801147, blue: 0.9381148219, alpha: 1)),
                                                    Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)),
                                                    Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
                                                ]),
                            center: .center,
                            angle: .degrees(120))
            
            
            LinearGradient(
                gradient: Gradient(colors: [
                                    Color.white.opacity(0),
                                    Color.white.opacity(1)]),
                startPoint: .bottom,
                endPoint: .top)
            
            
            content
        }
        
        
    }
    
    var content: some View {
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

//            AngularGradient(gradient: Gradient(stops: [
//                .init(color: Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)), location: 0.07859717309474945),
//                .init(color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)), location: 0.4838635087013245),
//                .init(color: Color(#colorLiteral(red: 0.4491932392, green: 0.7662801147, blue: 0.9381148219, alpha: 1)), location: 0.6134116053581238),
//                .init(color: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), location: 0.8473764657974243)
//            ]),
//            center: UnitPoint(
//                x: 0.4618092920835134,
//                y: 0.511450411134368) )
//
