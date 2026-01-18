//
//  SecretModel.swift
//  WildHaven
//
//  Created by Karim Sakr on 18/01/2026.
//

struct APIConfig: Codable {
    let googleMapsAPIKey: String

    enum CodingKeys: String, CodingKey {
        case googleMapsAPIKey = "GOOGLE_MAPS_API_KEY"
    }
}
