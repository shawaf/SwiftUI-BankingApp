//
//  PagesToolbar.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct PagesToolbar: View {
    
    let pageTitle:String
    
    var body: some View {
        HStack {
            Button{
                
            } label: {
                Image(systemName: "arrow.backward")
                    .foregroundColor(Color.black)
            }
            Spacer()
            Text(pageTitle)
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            
            Button{
                
            } label: {
                Image("profile_mark")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 35, height: 35)
                    .clipShape(Rectangle())
                    .background(Color.gray)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
        }.padding()
    }
}

struct PagesToolbar_Previews: PreviewProvider {
    static var previews: some View {
        PagesToolbar(pageTitle: "Statistics")
    }
}
