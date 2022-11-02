//
//  ContentView.swift
//  KarmelDietCalculator
//
//  Created by Michal on 01/11/2022.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var karma = Karma()
    

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
  
                  HStack{
                      VStack(){
                          
                          HStack{
                              Text("Wilgotność")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Białko surowe")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Tłuszcz surowy")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Popiół surowy")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Włókno surowe")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Wapń")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                           }
                          HStack{
                              Text("Fosfor")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          
                      }
                      .frame(width: 170)
                      .padding()

                      VStack {
                          
                          HStack{
                              Text("Węglowodany")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                           }
                          HStack{
                              Text("Sucha masa")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          
                          
                          HStack{
                              Text("Białko \nSucha masa")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Tłuszcz \nSucha masa")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Węglowodany\nSucha masa")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          HStack{
                              Text("Wapń : Fosfor")
                              Spacer()
                              TextField("", text: $karma.wilgotnosc)
                                  .frame(width: 40,height: 25)
                                  .border(.orange)
                          }
                          
                          
                      }
                      .frame(width: 160)
                      .padding()
                      Spacer()
                  }
                  
                  

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



class Karma: ObservableObject {
    @Published var wilgotnosc: String = ""
    @Published var bialkoSurowe : String = ""
    @Published var tluszSurowy : String = ""

//    @Published var wilgotnosc = ("Wilgotność", 2)
//    @Published var bialkoSurowe = ("Białko surowe", 2)
//    @Published var tluszczSurowy = ("Wilgotność", 2)

    
}
