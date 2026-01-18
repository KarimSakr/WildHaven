//
//  Constants.swift
//  WildHaven
//
//  Created by Karim Sakr on 15/12/2025.
//

import Foundation

struct Constants {
    
    struct Keys {
        static var googleMapsAPIKey: String? {
            guard let url = Bundle.main.url(forResource: "Secret", withExtension: "plist") else { return nil }
            do {
                let data = try Data(contentsOf: url)
                let config = try PropertyListDecoder().decode(APIConfig.self, from: data)
                return config.googleMapsAPIKey
            } catch { return nil } 
        }
    }
}
