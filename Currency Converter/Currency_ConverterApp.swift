//
//  Currency_ConverterApp.swift
//  Currency Converter
//
//  Created by Sina Han on 28.11.23.
//

import SwiftUI

@main
struct Currency_ConverterApp: App {
    var body: some Scene {
        WindowGroup {
            ConverterView(converterViewModel: ConverterViewModel())
        }
    }
}
