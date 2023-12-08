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
}
