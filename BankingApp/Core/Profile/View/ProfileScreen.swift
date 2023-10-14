//
//  ProfileScreenView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 09/10/2023.
//

import SwiftUI

struct ProfileScreen: View {
    let profileItems : [ProfileItem] = ProfileItem.list
    
    var body: some View {
        VStack(spacing:-30){
            VStack{
                PagesToolbar(pageTitle: "Profile", isLight: false , showProfileImage: false)
                    .padding(.top,50)
                Spacer()
            }.background(Color.black)
                .frame(height: 200)
            VStack{
                HStack (spacing:20){
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Rectangle())
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                    VStack (spacing: 8){
                        Text("Mo Elshawaf")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.black)
                        Rectangle()
                            .frame(width: 100, height: 4)
                            .foregroundColor(Color("card_selected_color"))
                            .cornerRadius(10)
                    }
                    Spacer()
                    Button{
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)
                    }
                }.padding()
                    .padding(.top, 20)
                
                LazyVStack {
                    ForEach(profileItems) { item in
                        ProfileRowView(profileItem: item)
                    }
                }.padding(.leading, 5)
                Spacer()
                
            }
                .frame(maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(30)
                .ignoresSafeArea()
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 5, y: 5)
        }
    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
