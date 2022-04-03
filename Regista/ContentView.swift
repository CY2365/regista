//
//  ContentView.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		TabView {
			NavigationView {
				List {
					NavigationLink(destination: Text("Match 1")) {
						Text("match")
					}
				}
				
			}.tabItem {
				Label("Match", systemImage: "sportscourt")
			}
			
			List {
				Text("name")
			}.tabItem {
				Label("Account", systemImage: "person.crop.circle")
			}
			
		}
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
