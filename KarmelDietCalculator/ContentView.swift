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
  
                  ExtractedView(karma: karma)
                  

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


struct ExtractedView: View {
    @StateObject var karma = Karma()

    
    var body: some View {
        HStack{
            VStack(){
                
                HStack{
                    Text("Wilgotność")
                    Spacer()
                    TextField("", text: $karma.wilgotnosc)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)

                }
                HStack{
                    Text("Białko surowe")
                    Spacer()
                    TextField("", text: $karma.bialkoSurowe)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                    
                }
                HStack{
                    Text("Tłuszcz surowy")
                    Spacer()
                    TextField("", text: $karma.tluszSurowy)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                HStack{
                    Text("Popiół surowy")
                    Spacer()
                    TextField("", text: $karma.popiolSurowy)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                HStack{
                    Text("Włókno surowe")
                    Spacer()
                    TextField("", text: $karma.wloknoSurowe)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                HStack{
                    Text("Wapń")
                    Spacer()
                    TextField("", text: $karma.wapn)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                HStack{
                    Text("Fosfor")
                    Spacer()
                    TextField("", text: $karma.fosfor)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                }
                
            }
            .frame(width: 175)
            .padding(.leading)
            
            VStack {
                
                HStack{
                    Text("Węglowodany")
                    Spacer()
                    Text(karma.weglowodany)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                }
                HStack{
                    Text("Sucha masa")
                    Spacer()
                    Text(karma.suchaMasa)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                }
                
                Group{
                    HStack{
                        Text("Białko \nSucha masa")
                        Spacer()
                        Text(karma.bialkoSuchaMasa)
                            .frame(width: 46,height: 25)
                            .border(.orange)
                    }
                    HStack{
                        Text("Tłuszcz \nSucha masa")
                        Spacer()
                        Text(karma.tluszczSuchaMasa)
                            .frame(width: 46,height: 25)
                            .border(.orange)
                    }
                    HStack{
                        Text("Węglowodany\nSucha masa")
                        Spacer()
                        Text(karma.weglowodanySuchaMasa)
                            .frame(width: 46,height: 25)
                            .border(.orange)
                    }
                    HStack{
                        Text("Wapń : Fosfor")
                        Spacer()
                        Text(karma.wapnFosfor)
                            .frame(width: 46,height: 25)
                            .border(.orange)
                    }
                }
                
                
            }
            .frame(width: 175)
            .padding()
            Spacer()
        }
    }
}
