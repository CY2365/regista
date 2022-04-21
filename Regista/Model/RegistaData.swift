//
//  RegistaData.swift
//  Regista
//
//  Created by Cenk Yavuz on 18/04/2022.
//

import SwiftUI

class RegistaData: ObservableObject {
    
	@Published var user = Profile()
    
    init() {
        addMatch(at: "Istanbul")
    }
	
    
    func dateToString(from date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        return dateFormatter.string(from: date)
    }
    
    func addMatch(at location: String) {
        var date = DateComponents()
        date.day = 22
        let calendar = Calendar.current
        if let newDate = calendar.date(from: date) {
            let match = Match(date: newDate, location: location, players: [user])
            user.matches.append(match)
        }
    }
}
