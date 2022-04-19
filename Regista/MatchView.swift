//
//  MatchView.swift
//  Regista
//
//  Created by Cenk Yavuz on 19/04/2022.
//

import SwiftUI

struct MatchView: View {
    
    @ObservedObject var vm: RegistaViewModel
    
    var date: String{
        vm.dateToString(vm.data.user.matches[0].date)
    }
    
    
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Location")) {
                    Text(vm.data.user.matches[0].location)
                    
                }
                Section(header: Text("Players")) {
                    ForEach(vm.data.user.matches[0].players) { player in
                        Text(player.firstName + " " + player.lastName)
                    }
                    
                    
                }
            }.navigationBarTitle(date, displayMode: .large)
        }
        
    }
    
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView(vm: RegistaViewModel())
    }
}
