//
//  ProfileRowView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 12/10/2023.
//

import SwiftUI

struct ProfileRowView: View {
    let profileItem: ProfileItem
    var body: some View {
        HStack{
            Image(systemName: profileItem.icon)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.secondary)
                .padding(.trailing)
            VStack(alignment: .leading) {
                Text(profileItem.title)
                    .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                if profileItem.subTitle != nil {
                    Text(profileItem.subTitle!)
                    .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.secondary)
                }
                }
            Spacer()
            
        }.padding()
    }
}

struct ProfileRowView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRowView(profileItem: ProfileItem.list[0])
    }
}
