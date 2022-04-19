//
//  RegistaApp.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

@main
struct RegistaApp: App {
	@StateObject var VM = RegistaViewModel()
    
    var body: some Scene {
        WindowGroup {
            RegistaView(registaViewModel: VM)
        }
    }
}
