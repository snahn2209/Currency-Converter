//
//  ConverterViewModel.swift
//  Currency Converter
//
//  Created by Sina Han on 28.11.23.
//

import Foundation

class ConverterViewModel: ObservableObject {
    @Published private var converter = ConverterModel()
    var euroToUSD: String {
         get {
             String(format: "%g", converter.euroToUSD)
         }
         set {
             if let value = Double(newValue) {
                 converter.euroToUSD = value
             }
         }
     }

     var euroToPound: String {
         get {
             String(format: "%g", converter.euroToPound)
         }
         set {
             if let value = Double(newValue) {
                 converter.euroToPound = value
             }
         }
     }

    
    var euros: String {
        get {
            String(format: "%.2f", converter.euro) //nachkommastellen
        }
        set {
            if let value = Double(newValue) {
                converter.euro = value
            }
        }
    }
    var usd: String {
        get {
            String(format: "%.2f", converter.usd)
        }
        set {
            if let value = Double(newValue) {
                converter.usd = value
            }
        }
    }
    var pound: String {
        get {
            String(format: "%.2f", converter.pound)
        }
        set {
            if let value = Double(newValue) {
                converter.pound = value
            }
        }
    }
    func downloadExchangeRates() {
        guard let url = URL(string: "https://www.ecb.europa.eu/stats/eurofxref/eurofxref-hist-90d.xml") else { return print("Invalid URL") }
        
        do {
            let contentString = try String(contentsOf: url, encoding: .utf8)
                    
            if let usdRange = contentString.range(of: "\"USD\" rate=\"") {
                let startIndex = usdRange.upperBound
                if let endIndex = contentString[startIndex...].firstIndex(of: "\"") {
                    //[startIndex...] -> creates a partial range from startIndex to the end of the string
                    let substring = contentString[startIndex..<endIndex]
                    if let usdValue = Double(substring) {
                        converter.euroToUSD = usdValue
                    }
                }
            }

            if let poundRange = contentString.range(of:"\"GBP\" rate=\"" ) {
                let startIndex = poundRange.upperBound
                if let endIndex = contentString[startIndex...].firstIndex(of: "\"") {
                    let substring = contentString[startIndex..<endIndex]
                    if let poundValue = Double(substring) {
                        converter.euroToPound = poundValue
                    }
                }
            }
            
        } catch {
            print("Error downloading exchange rates: \(error)")
        }
    }
}
