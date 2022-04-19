//
//  RegistaViewModel.swift
//  Regista
//
//  Created by Cenk Yavuz on 18/04/2022.
//

import SwiftUI

class RegistaViewModel: ObservableObject {
	
	@Published var regista: RegistaModel = RegistaModel()
	
	func getUser() -> RegistaModel.Profile {
		return regista.getUser()
	}
	
}
