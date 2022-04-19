//
//  RegistaView.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

struct RegistaView: View {
	
	@ObservedObject var registaViewModel: RegistaViewModel
	
    var body: some View {
		TabView {
			listView
			AccountView()
				.tabItem {
					Label("Account", systemImage: "person.crop.circle")
			}
		}
        
    }
    
    private func dateToString(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        return dateFormatter.string(from: date)
    }
	
	private var listView: some View {
		NavigationView {
			List {
				ForEach(registaViewModel.getUser().matches) { match in
					NavigationLink(destination: Text(match.location)) {
                        Text(dateToString(match.date))
					}
				}
				
			}
			
		}.tabItem {
			Label("Match", systemImage: "sportscourt")
		}
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RegistaView(registaViewModel: RegistaViewModel())
    }
}


