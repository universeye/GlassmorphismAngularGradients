//
//  ContentView.swift
//  GlassmorphismAngularGradients
//
//  Created by Terry Kuo on 2021/3/15.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    var body: some View {
        ZStack {

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
                
                
                
                Image("GradientBubble_1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300, height: 300)
                    .opacity(0.7)
            }
            .ignoresSafeArea()
            
            
            
            
            
            content
            
        }
        
        
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 26, height: 26)
                .mask(Circle())
                .padding()
                .background(VisualEffectBlurView(blurStyle: .light))
                .mask(Circle())
                .overlay(Circle()
                            .stroke(lineWidth: 0.5)
                            .fill(Color.white))
                .background(AngularGradient(gradient: Gradient(stops: [.init(color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), location: 0.07859717309474945),
                                                                       .init(color:Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), location: 0.43838635087013245),
                                                                       .init(color:Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), location: 0.6134116053581238),
                                                                       .init(color:Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), location: 0.8473764657974243)
                ]),
                center: UnitPoint(x: 0.4618092920835134, y: 0.511450411134368))
                .mask(Circle())
                .frame(width: 84, height: 84)
                .offset(x: -20, y: -20))
            
            
            Text("Terry Kuo".uppercased())
                .font(.footnote).fontWeight(.semibold)
            Text("I teach designers and developers")
                .font(.title).bold()
                .frame(width: 350, height: 80, alignment: .leading)
            Text("Awarded 10 certificates since September 2020")
                .font(.footnote)
            
            HStack {
                Image(systemName: "link")
                Text("dzhiphop.com")
            }
            .font(.footnote)
            
            Spacer()
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
