//
//  ContentView.swift
//  GlassmorphismAngularGradients
//
//  Created by Terry Kuo on 2021/3/15.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    
    @State var show = false
    
    var body: some View {
        ZStack {

            backGround
            
            content //the whole VStack
            
            cardView
                .onTapGesture {
                    withAnimation(.spring()) {
                    show.toggle()
                    }
                }
            
        } //ZStack
        
    }
    
    var cardView: some View {
        VisualEffectBlurView(blurStyle: .systemUltraThinMaterialLight, vibrancyStyle: .fill, content: {
            Text("UI Design").bold()
        })
        .frame(maxWidth: .infinity, maxHeight: show ? 400 : 220)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .overlay(
            RoundedRectangle(
                cornerRadius: 30,
                style: .continuous)
                .stroke(lineWidth: 0.5)
                .fill(Color.white))
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10 )
        .padding()
        .padding(.top, 330)
    }
    
    var backGround: some View {
        ZStack {
            AngularGradient(gradient: Gradient(
                                colors:[Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)),Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)),Color(#colorLiteral(red: 0.4491932392, green: 0.7662801147, blue: 0.9381148219, alpha: 1)),Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)),Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]),
                            center: .center,
                            angle: .degrees(120))
            
            LinearGradient(gradient: Gradient(
                            colors: [
                                Color.white.opacity(0),
                                Color.white.opacity(1)]),
                           startPoint: .bottom,
                           endPoint: .top)
            
            Image("GradientBubble_1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 300)
                .opacity(0.7)
                .offset(x:show ? 0 : 10 ,y: show ? -60 : -100)
        }
        .ignoresSafeArea()
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 33, height: 33)
                .mask(Circle())
                .padding()
                
                .background(VisualEffectBlurView(blurStyle: .light))
                .mask(Circle())
                
                .overlay(Circle()
                            .stroke(lineWidth: 0.5)
                            .fill(Color.white))
                .background(avatarBlurCircleView2
                                .offset(x: show ? -24 : -20, y: show ? -10 : -20))
            
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
        } //VStack
    } // content Some View
    
    var avatarBlurCircleView: some View {
        AngularGradient(
            gradient: Gradient(
                stops: [
                    .init(color:Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), location: 0.07859717309474945),
                    .init(color:Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)), location: 0.43838635087013245),
                    .init(color:Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), location: 0.6134116053581238),
                    .init(color:Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), location: 0.8473764657974243)
                ]),
            center: UnitPoint(x: 0.4618092920835134, y: 0.511450411134368))
    } //avatarBlurCircleView
    
    var avatarBlurCircleView2: some View {
        AngularGradient(
            gradient: Gradient(
                colors: [Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)),Color(#colorLiteral(red: 0.9529649615, green: 0.0913663283, blue: 0.9492185712, alpha: 1)),Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)),Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)),Color(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))]
                ),
            center: .center,
            angle: .degrees(120))
            .frame(width: 84, height: 84)
            .mask(Circle())
            .overlay(
                RadialGradient(
                    gradient: Gradient(stops: [
                        .init(color: Color(#colorLiteral(red: 0.6848192811, green: 0.08829141408, blue: 0.6905739903, alpha: 1)), location: 0),
                        .init(color: Color(#colorLiteral(red: 0.917719543, green: 0.2665117383, blue: 0.5370019078, alpha: 1)), location: 1)
                    ]),
                    center: UnitPoint(
                        x: 0.20449714845584743,
                        y: 0.5004239991789909),
                    startRadius: 1.5206400165393983,
                    endRadius: 151.28048071032234)
                    .frame(width: 66, height: 66)
                    .mask(Circle())
                    .blur(radius: 10)
            )
    } //avatarBlurCircleView2
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
