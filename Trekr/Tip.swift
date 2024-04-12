//
//  Tip.swift
//  Trekr
//
//  Created by Emre Yilmaz on 2024-04-11.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
