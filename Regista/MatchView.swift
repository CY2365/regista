//
//  MatchView.swift
//  Regista
//
//  Created by Cenk Yavuz on 19/04/2022.
//

import SwiftUI

struct MatchView: View {
    
    @EnvironmentObject var viewModel: RegistaViewModel
    
    var date: String{
        viewModel.dateToString(viewModel.data.user.matches[0].date)
    }
    
    
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Location")) {
                    Text(viewModel.data.user.matches[0].location)
                    
                }
                Section(header: Text("Players")) {
                    ForEach(viewModel.data.user.matches[0].players) { player in
                        Text(player.firstName + " " + player.lastName)
                    }
                    
                    
                }
            }.navigationBarTitle(date, displayMode: .large)
        }
        
    }
    
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
    }
}
