//
//  Location.swift
//  Trekr
//
//  Created by Emre Yilmaz on 2024-02-19.
//

import Foundation

struct Location: Decodable{
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String

}
