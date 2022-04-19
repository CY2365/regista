//
//  RegistaView.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

struct RegistaView: View {
    
    @ObservedObject var vm: RegistaViewModel
    
    
    var body: some View {
		TabView {
			AccountView()
				.tabItem {
					Label("Account", systemImage: "person.crop.circle")
			}
            listView
        }
    }
	
	private var listView: some View {
		NavigationView {
			List {
                ForEach(vm.data.user.matches) { match in
                    NavigationLink(destination: MatchView(vm: vm)) {
                        Text(vm.dateToString(match.date))
					}
				}
				
            }.navigationBarTitle(Text("Your Matches"))
			
		}.tabItem {
			Label("Matches", systemImage: "sportscourt")
        }
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegistaView(vm: RegistaViewModel())
    }
}


