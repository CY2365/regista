//
//  ListView.swift
//  Regista
//
//  Created by Cenk Yavuz on 19/04/2022.
//

import SwiftUI

struct ListView: View {
	
	@EnvironmentObject var data: RegistaData
		
    var body: some View {
		NavigationView {
			List {
                ForEach(data.user.matches) { match in
					NavigationLink(destination: MatchView()) {
                        Text(data.dateToString(from: match.date))
					}
				}
				
			}
            .navigationBarTitle(Text("Your Matches"))
			
		}
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
		ListView()
            .environmentObject(RegistaData())
    }
}
