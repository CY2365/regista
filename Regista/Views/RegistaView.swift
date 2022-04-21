//
//  RegistaView.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

struct RegistaView: View {
    
    @EnvironmentObject var data: RegistaData
    
    var body: some View {
		TabView {
            ListView().tabItem { Label("Matches", systemImage: "sportscourt") }
			AccountView().tabItem { Label("Account", systemImage: "person.crop.circle") }
        }
    }
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegistaView()
            .environmentObject(RegistaData())
    }
}


