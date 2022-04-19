//
//  RegistaData.swift
//  Regista
//
//  Created by Cenk Yavuz on 18/04/2022.
//

import Foundation


struct RegistaData: Hashable {
    
    var user: Profile
    
    struct Profile: Identifiable, Hashable {
        let id: Int
        let firstName: String
        let lastName: String
        var email: String
        var phoneNumber: String
        var position: String
        var matchesPlayed: Int
        var rating: Int
        var profilePicture: Data?
        var matches: [Match]
    }
    
    init() {
        user = Profile(id: 1, firstName: "Cenk", lastName: "Yavuz", email: "ckyz1007@gmail.com", phoneNumber: "+905354199110", position: "Keeper", matchesPlayed: 3, rating: 3, matches: [])
        addMatch()
    }
    
    struct Match: Identifiable, Hashable  {
        
        let id: Int
        var date: Date
        var location: String
        var players: [Profile]
        var joined: Bool
        
    }
    
    mutating func addMatch() {
        let match = Match(id: 1, date: Date(), location: "Istanbul", players: [user], joined: true)
        user.matches.append(match)
    }
}

