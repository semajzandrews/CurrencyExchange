//
//  FetchData.swift
//  CurrencyExchange
//
//  Created by Semaj Andrews on 3/26/22.
//

import SwiftUI

class FetchData: ObservableObject {

    @Published var conversionData: [Currency] = []
    
    init(){
        fetch()
    }
    
    func fetch(){
        
        let url = "https://api.exchangeratesapi.io/latest?base=USD"
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: URL(string: url)!) { (data, _, _) in
            
            guard let JSONData = data else { return }
            
            do {
                let conversion = try JSONDecoder().decode(Conversion.self, from: JSONData)
                print(conversion)
                
            }
            catch {
                print(error.localizedDescription)
            }
        }
        .resume()
    }
}


