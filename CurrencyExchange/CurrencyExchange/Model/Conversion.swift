//
//  Conversion.swift
//  CurrencyExchange
//
//  Created by Semaj Andrews on 3/26/22.
//

import SwiftUI

struct Conversion: Decodable {

    var rates: [String: Double]
    var date: String
    var base: String
    
}

