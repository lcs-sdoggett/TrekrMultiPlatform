//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Doggett, Scott on 2021-01-25.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}


