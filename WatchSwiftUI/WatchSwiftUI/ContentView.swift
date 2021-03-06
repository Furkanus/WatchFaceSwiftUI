//
//  ContentView.swift
//  WatchSwiftUI
//
//  Created by Furkan Hanci on 9/19/20.
//

import SwiftUI
struct ContentView: View {
    @State private var rotateSeconds = false
    @State private var dotOffset = false
    var body: some View {
            ZStack{
               
                Color.black
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack(alignment: .center, spacing: 100) {
                    Text("WatchFace SwiftUI")
                        .fontWeight(.thin)
                        .foregroundColor(.white)
                        .font(.largeTitle)
                    
                    
                    ZStack {
                        Circle()
                            .stroke()
                            .frame(width: 300, height: 300)
                            .foregroundColor(.white)
                            .opacity(0)
                        
                        
                      
                        ForEach(0 ..< 60) {
                            Circle()
                                .frame(width: 4, height: 3)
                                .foregroundColor(.white)
                                .offset(y: -150)
                                .rotationEffect(.degrees(Double($0) * 6))
                                .opacity(0.2)
                    }
                        
                       
                        ForEach(0 ..< 12) {
                            Circle()
                                .frame(width: 10, height: 10)
                                .foregroundColor(.white)
                                .offset(y: -150)
                                .rotationEffect(.degrees(Double($0) * 30))
                                
                        }
                        
                        
                      
                        Rectangle()
                            .frame(width: 6, height: 120)
                            .foregroundColor(.green)
                            .rotationEffect(.degrees(0))
                            .cornerRadius(12)
                            .offset(y: 60)
                            
                        Rectangle()
                            .frame(width: 6, height: 80)
                            .cornerRadius(12)
                            .foregroundColor(.red)
                            .rotationEffect(.degrees(40), anchor: .top)
                            .offset(y: 40)
                        
                        ZStack {
                        Rectangle()
                            .frame(width: 200, height: 1)
                            .foregroundColor(Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)))
                            .offset(x: 41)
                            
                        
                            
                    Circle()
                            .stroke()
                            .foregroundColor(.blue)
                            .frame(width: 18, height: 18)
                            .offset(x: 150)
                            
                    Circle()
                        .frame(width: 5, height: 5)
                        .foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)))
                        .offset(x: -57)
                        
                        }.rotationEffect(.degrees(rotateSeconds ? 360 : 0))
                            .animation(Animation.linear(duration: 36).repeatForever(autoreverses: false))
                         .onAppear() {
                                self.rotateSeconds.toggle()
                        }
                        
                        
                        Circle()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.white)
                            
                            .overlay(Circle().frame(width: 8, height: 8).foregroundColor(Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))))
                            .overlay(Circle().frame(width: 4, height: 4).foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))))
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

