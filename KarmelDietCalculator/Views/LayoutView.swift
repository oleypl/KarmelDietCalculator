//
//  LayoutView.swift
//  KarmelDietCalculator
//
//  Created by Michal on 02/11/2022.
//

import SwiftUI


struct LayoutView: View {
    @StateObject var karma = Karma()
    @State var error : String

    func sumOfAll(){
            if(karma.percSum() > 100) {
                error = "Suma składników przekracza 100%"
            }
        else {
            error = ""
        }
    }
    
    var body: some View {
        
        Text(error)
        .foregroundColor(.red)
        .frame(height: 30)
        
        HStack{
           
            
            VStack(){
                
                Text("Dane wejściowe")
                    .fontWeight(.bold)
                
                HStack{
                    Text("Wilgotność")
                    Spacer()
                    TextField("", text: $karma.wilgotnosc)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.wilgotnosc) { newValue in
                            sumOfAll()
                        }
                    

                }
                HStack{
                    Text("Białko surowe")
                    Spacer()
                    TextField("", text: $karma.bialkoSurowe)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.bialkoSurowe) { newValue in
                            sumOfAll()
                        }
                    
                }
                HStack{
                    Text("Tłuszcz surowy")
                    Spacer()
                    TextField("", text: $karma.tluszSurowy)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.tluszSurowy) { newValue in
                            sumOfAll()
                        }
                }
                HStack{
                    Text("Popiół surowy")
                    Spacer()
                    TextField("", text: $karma.popiolSurowy)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.popiolSurowy) { newValue in
                            sumOfAll()
                        }
                }
                HStack{
                    Text("Włókno surowe")
                    Spacer()
                    TextField("", text: $karma.wloknoSurowe)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.wloknoSurowe) { newValue in
                            sumOfAll()
                        }
                }
                HStack{
                    Text("Wapń")
                    Spacer()
                    TextField("", text: $karma.wapn)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.wapn) { newValue in
                            sumOfAll()
                        }
                }
                HStack{
                    Text("Fosfor")
                    Spacer()
                    TextField("", text: $karma.fosfor)
                        .frame(width: 46,height: 25)
                        .border(.orange)
                        .multilineTextAlignment(.center)
                        .keyboardType(.decimalPad)
                        .onChange(of: karma.fosfor) { newValue in
                            sumOfAll()
                        }
                }
                
            }
            .frame(width: 175)
            .padding(.leading)
            
            VStack {
                Text("Dane wyjściowe")
                    .fontWeight(.bold)

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


struct LayoutView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutView(karma: Karma(), error: "")
    }
}
