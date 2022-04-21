//
//  Match.swift
//  Regista
//
//  Created by Cenk Yavuz on 21/04/2022.
//

import Foundation


struct Match: Identifiable, Hashable  {
    let id = UUID()
    var date: Date
    var location: String
    var players: [Profile]
    var note: String = ""
}
