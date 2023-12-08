//
//  ConverterModel.swift
//  Currency Converter
//
//  Created by Sina Han on 28.11.23.
//

import Foundation
//unbedingt als struct machen !

struct ConverterModel {
    var euro: Double = 1.0
    var euroToUSD: Double = 1.09
    var euroToPound: Double = 0.8694
    
    var pound: Double {
        get {
            return euro * euroToPound
        }
        set {
            euro = newValue / euroToPound
        }
    }
    var usd: Double {
        get {
            return euro * euroToUSD
        }
        set {
            euro = newValue / euroToUSD
        }
        
    }

    
}
