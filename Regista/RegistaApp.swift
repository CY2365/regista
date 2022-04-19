//
//  RegistaApp.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

@main
struct RegistaApp: App {
	let regista = RegistaViewModel()
    var body: some Scene {
        WindowGroup {
            RegistaView(registaViewModel: regista)
        }
    }
}
