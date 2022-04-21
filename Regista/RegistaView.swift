//
//  RegistaView.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

struct RegistaView: View {
    
    @EnvironmentObject var viewModel: RegistaViewModel
	
	var matches: [RegistaData.Match] {
		viewModel.data.user.matches
	}
    
    
    var body: some View {
		TabView {
			AccountView().tabItem { Label("Account", systemImage: "person.crop.circle") }
			ListView(matches: matches).tabItem { Label("Matches", systemImage: "sportscourt") }
        }
    }
	
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegistaView()
    }
}


