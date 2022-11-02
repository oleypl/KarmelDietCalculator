//
//  Karma.swift
//  KarmelDietCalculator
//
//  Created by Michal on 02/11/2022.
//

import Foundation

class Karma: ObservableObject {
    @Published var wilgotnosc: String = ""
    @Published var bialkoSurowe : String = ""
    @Published var tluszSurowy : String = ""
    @Published var popiolSurowy : String = ""
    @Published var wloknoSurowe : String = ""
    @Published var wapn : String = ""
    @Published var fosfor : String = ""


    
     var weglowodany: String {
        get {
            if let wilg = Double(wilgotnosc) {
                if let bs = Double(bialkoSurowe) {
                    if let ts = Double(tluszSurowy) {
                        if let ps = Double(popiolSurowy) {
                            if let ws = Double(wloknoSurowe) {
                                let val = 100.00 - wilg - bs - ts - ps - ws
                                let roundedValue = round(val * 100) / 100.0
                                return String(roundedValue)
                            }
                        }
                    }
                }
            }
            return "0.00"
        }
    }
    
    var suchaMasa: String {
       get {
           
           if let wilg = Double(wilgotnosc) {
               return String(100.00 - wilg)
           }
           return "0.00"
       }
   }
    
    var bialkoSuchaMasa: String {
       get {
           if let sm = Double(suchaMasa) {
               if let bs = Double(bialkoSurowe) {
                   let val = (bs / sm) * 100.00
                   let roundedValue = round(val * 100) / 100.0
                   return String(roundedValue)
               }
           }
           return "0.00"
       }
   }
    var tluszczSuchaMasa: String {
        get {
            if let sm = Double(suchaMasa) {
                if let ts = Double(tluszSurowy) {
                    let val = (ts / sm) * 100.00
                    let roundedValue = round(val * 100) / 100.0
                    return String(roundedValue)
                }
            }
            return "0.00"
        }
   }
    var weglowodanySuchaMasa: String {
        get {
            if let sm = Double(suchaMasa) {
                if let weg = Double(weglowodany) {
                    let val = (weg / sm) * 100.00
                    let roundedValue = round(val * 100) / 100.0
                    return String(roundedValue)
                }
            }
            return "0.00"
        }
   }
    
    
    var wapnFosfor: String {
        get {

            if let wap = Double(wapn) {
                if let fos = Double(fosfor) {
                    let val = wap/fos
                    let roundedValue = round(val * 100) / 100.0
                    return String(roundedValue)
                }
            }
            
            return "0.00"
        }
   }
    
    
    func percSum() -> Double {
        let wilgotnosc = Double(wilgotnosc) ?? 0.00
        let bialkoSurowe = Double(bialkoSurowe) ?? 0.00
        let tluszSurowy = Double(tluszSurowy) ?? 0.00
        let popiolSurowy = Double(popiolSurowy) ?? 0.00
        let wloknoSurowe = Double(wloknoSurowe) ?? 0.00
        let wapn = Double(wapn) ?? 0.00
        let fosfor = Double(fosfor) ?? 0.00
      
        return wilgotnosc + bialkoSurowe + tluszSurowy + popiolSurowy + wloknoSurowe + wapn + fosfor
    }
    
}
