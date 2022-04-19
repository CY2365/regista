//
//  Profile.swift
//  Regista
//
//  Created by Cenk Yavuz on 18/04/2022.
//

import Foundation


struct RegistaModel {
	
	private var user: Profile
	
	init() {
		user = Profile(id: 1, firstName: "Cenk", lastName: "Yavuz", email: "ckyz1007@gmail.com", phoneNumber: "+905354199110", position: "Keeper", matchesPlayed: 5, rating: 4, matches: [Match(id: 1, date: Date(), location: "istanbul", players: [], joined: true)])
	}
	
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
	
	func getUser() -> Profile {
		return user
	}
	
	func updateProfile() {
		
	}
	
	struct Match: Identifiable, Hashable {
		let id: Int
		var date: Date
		var location: String
		var players: [String]
		var joined: Bool
	}
	
	func addMatch() {
		
	}
}
