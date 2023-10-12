//
//  PagesToolbar.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct PagesToolbar: View {
    
    let pageTitle:String
    let isLight:Bool
    let showProfileImage: Bool
    
    var body: some View {
        HStack {
            Button{
                
            } label: {
                Image(systemName: "arrow.backward")
                    .foregroundColor(isLight ? Color.black : Color.white)
            }
            Spacer()
            Text(pageTitle)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(isLight ? Color.black : Color.white)
            Spacer()
            
            Button{
                
            } label: {
                Image(showProfileImage ? "profile" : "")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 35, height: 35)
                        .clipShape(Rectangle())
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
        }.padding()
    }
}

struct PagesToolbar_Previews: PreviewProvider {
    static var previews: some View {
        PagesToolbar(pageTitle: "Statistics",isLight: true , showProfileImage: false)
    }
}
