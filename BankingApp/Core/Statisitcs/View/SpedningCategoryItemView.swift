//
//  SpedningCategoryItem.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import SwiftUI

struct SpedningCategoryItemView: View {
    let spedningCategory: SpendingCategoryItem
    
    var body: some View {
        HStack{
            VStack(alignment: .leading, spacing: 0){
                Image(systemName: spedningCategory.icon)
                    .resizable()
                    .frame(width: 35, height: 35)
                    .padding(10)
                Spacer()
                Text(spedningCategory.name)
                    .font(.subheadline)
                    .fontWeight(.light)
                    .foregroundColor(Color.black)
                
                Text("$\(spedningCategory.totalSpend)")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.top, 5)
            }.padding()
                Spacer()
        }.frame(width: 150, height: 150)
            .background(Color(spedningCategory.color))
            .cornerRadius(20)
    }
}

struct SpedningCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        SpedningCategoryItemView(spedningCategory: SpendingCategoryItem.Mock_List[0])
    }
}
