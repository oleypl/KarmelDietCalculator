//
//  ContentView.swift
//  KarmelDietCalculator
//
//  Created by Michal on 01/11/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var karma = Karma()
    @State var error = ""
    
    var body: some View {
        ZStack{
              VStack {
                  LinearGradient(gradient: Gradient(colors: [Color.white,Color.orange]), startPoint: .top, endPoint: .bottom)
                      .frame(width: UIScreen.main.bounds.width, height: 180, alignment: .center)
                      .clipped()
                      .overlay(
                          Image("karmelek")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .offset(y: 90)
                      )
                      .edgesIgnoringSafeArea(.all)
                  

                  
                  Spacer()
  
                  LayoutView(karma: karma, error: error)
                  
                    Spacer()
                  
                  
               }
            }
         }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

