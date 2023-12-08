//
//  ConverterViewModel.swift
//  Currency Converter
//
//  Created by Sina Han on 28.11.23.
//

import Foundation

class ConverterViewModel: ObservableObject {
    @Published private var converter = ConverterModel()
    
    var euros: String {
        get {
            String(format: "%g", converter.euro) //nachkommastellen
        }
        set {
            if let value = Double(newValue) {
                converter.euro = value
            }
        }
    }
    var usd: String {
        get {
            String(format: "%g", converter.usd)
        }
        set {
            if let value = Double(newValue) {
                converter.usd = value
            }
        }
    }
    var pound: String {
        get {
            String(format: "%g", converter.pound)
        }
        set {
            if let value = Double(newValue) {
                converter.pound = value
            }
        }
        
    }
}
