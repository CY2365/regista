//
//  ListView.swift
//  Regista
//
//  Created by Cenk Yavuz on 19/04/2022.
//

import SwiftUI

struct ListView: View {
	
	@EnvironmentObject var viewModel: RegistaViewModel
	
	var matches: [RegistaData.Match]
	
    var body: some View {
		NavigationView {
			List {
				ForEach(matches) { match in
					NavigationLink(destination: MatchView()) {
						Text(viewModel.dateToString(match.date))
					}
				}
				
			}.navigationBarTitle(Text("Your Matches"))
			
		}
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//		ListView(vm: RegistaViewModel(), matches: [Match(id: 1, date: Date(), location: "Istanbul", players: [user], joined: true)])
//    }
//}
