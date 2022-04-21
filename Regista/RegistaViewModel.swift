//
//  RegistaViewModel.swift
//  Regista
//
//  Created by Cenk Yavuz on 18/04/2022.
//

import SwiftUI

class RegistaViewModel: ObservableObject {
    
	@Published var data = RegistaData()
	
	
    
    func dateToString(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        return dateFormatter.string(from: date)
    }
    
    func addMatches() {
        data.addMatch()
    }
}
