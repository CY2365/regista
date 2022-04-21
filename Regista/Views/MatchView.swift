//
//  MatchView.swift
//  Regista
//
//  Created by Cenk Yavuz on 19/04/2022.
//

import SwiftUI

struct MatchView: View {
    
    @EnvironmentObject var data: RegistaData
    @State private var notes: String = ""
    
    var date: String{
        data.dateToString(from: data.user.matches[0].date)
    }
    
    
    
    var body: some View {
        VStack {
            Form {
                Section(header: Text("Location")) {
                    Text(data.user.matches[0].location)
                    
                }
                Section(header: Text("Players")) {
                    ForEach(data.user.matches[0].players) { player in
                        Text(player.firstName + " " + player.lastName)
                    }
                }
                Section(header: Text("Notes")) {
                    ZStack(alignment: .topLeading) {
                        TextEditor(text: $notes)
                            .frame(height: 150)
                        if notes == "" {
                            Text("Placeholder")
                                .padding()
                                
                        }
                    }
                }
            }.navigationBarTitle(date, displayMode: .large)
        }
        
    }
    
}

struct MatchView_Previews: PreviewProvider {
    static var previews: some View {
        MatchView()
            .environmentObject(RegistaData())
    }
}
