//
//  ConverterView.swift
//  Currency Converter
//
//  Created by Sina Han on 08.12.23.
//

import Foundation

import SwiftUI

struct ConverterView: View {
    
    @ObservedObject var converterViewModel: ConverterViewModel
    
    var body: some View {
        VStack {
            Text("Currency Converter").font(.title)
            HStack{
                Text("Rate € -> $")
                TextField("Euro to USD", text: $converterViewModel.usd)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
            }
            HStack {
                Text("Rate € -> £")
                TextField("Euro to Pound", text: $converterViewModel.pound)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.decimalPad)
            }
        }
        .padding()
    }
}

struct ConverterView_Previews: PreviewProvider {
    static var previews: some View {
        ConverterView(converterViewModel: ConverterViewModel())
    }
}
