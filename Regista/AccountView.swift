//
//  AccountView.swift
//  Regista
//
//  Created by Cenk Yavuz on 03/04/2022.
//

import SwiftUI

struct AccountView: View {
	let positions: Array = ["Keeper", "Central Defender", "Wing Back", "Defensive Midfielder", "Advanced Playmaker", "Box-to-Box", "Winger", "Striker"]
	@State private var selectedPosition = "Keeper"
	@State private var selectedPhone = "+901234567890"
	
    var body: some View {
		VStack {
			VStack {
				Image("profile-picture")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.clipShape(Circle())
					.frame(height: 200)
				Text("Cenk Yavuz")
					.padding()
					.font(.largeTitle)
			}
			Divider()
				.padding()
			
			VStack(alignment: .leading){
				
				HStack {
					Text("Email: ")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.padding(3)
						.font(.system(size: 14))
					Text(verbatim: "ckyz1007@gmail.com")
						.font(.system(size: 14))
				}
				
				HStack {
					Text("Phone: ")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.padding(3)
						.font(.system(size: 14))
					TextField("+901234567890", text: $selectedPhone)
						.font(.system(size: 14))
						.frame(width: 150)
						.keyboardType(.phonePad)
						
				}
				
				HStack {
					Text("Position:")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.padding(3)
						.font(.system(size: 14))
					Picker("choose position", selection: $selectedPosition) {
						ForEach(positions, id: \.self) {
							Text($0)
								.font(.system(size: 14))
								.accentColor(.black)
						}
						
					}
				}
				
				HStack {
					Text("Matches played: ")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.padding(3)
						.font(.system(size: 14))
					Text("89")
						.font(.system(size: 14))
				}
				
				HStack {
					Text("Rating: ")
						.fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
						.padding(3)
						.font(.system(size: 14))
					Text("⭐️⭐️⭐️⭐️⭐️")
						.font(.system(size: 14))
				}
			}.padding()
			Spacer()
		}
		
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
