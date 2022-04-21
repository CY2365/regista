//
//  Profile.swift
//  Regista
//
//  Created by Cenk Yavuz on 21/04/2022.
//

import Foundation

struct Profile: Identifiable, Hashable {
    let id = UUID()
    let firstName: String = "John"
    let lastName: String = "Doe"
    var email: String = "john.doe@mail.com"
    var phoneNumber: String = "+901234567890"
    var position: String = "Keeper"
    var matchesPlayed = 0
    var rating = 0
    var profilePicture: Data?
    var matches: [Match] = Array()
    
    
}
