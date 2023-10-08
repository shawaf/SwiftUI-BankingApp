//
//  ToolbarView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct MainToolbar: View {
    let pageTitle : String
    let onlyImage : Bool
    
    var body: some View {
        HStack (alignment: .top){
            if onlyImage == false {
                Button{
                    
                } label: {
                    Image(systemName: "arrow.backward")
                        .foregroundColor(Color.black)
                }
                
                Spacer()
                    Text(pageTitle)
                        .font(.title2)
                        .fontWeight(.bold)
            }
            Spacer()
                Button{
                    
                } label: {
                    Image("profile")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Rectangle())
                        .background(Color.gray)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                }
        }.padding()
            
    }
}

struct ToolbarView_Previews: PreviewProvider {
    static var previews: some View {
        MainToolbar(pageTitle: "Home", onlyImage : true)
    }
}
