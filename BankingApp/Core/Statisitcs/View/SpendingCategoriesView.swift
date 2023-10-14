//
//  StatisitcsSpendingBreakdownView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import SwiftUI

struct SpendingCategoriesView: View {
    var categories: [SpendingCategoryItem] = SpendingCategoryItem.Mock_List

    var body: some View {
        VStack(spacing: 0){
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 0){
                    Color(categories[0].color).frame(width: UIScreen.main.bounds.width/5)
                    Color(categories[1].color).frame(width: UIScreen.main.bounds.width/5)
                    Color(categories[2].color).frame(width: UIScreen.main.bounds.width/6)
                    Color(categories[3].color).frame(width: UIScreen.main.bounds.width/6)
                    Color(categories[4].color).frame(width: UIScreen.main.bounds.width/6)
                }
                .frame(maxWidth: .infinity)
                .frame(height: 12)
                .background(Color("lighergray"))
                .cornerRadius(40)
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 5, y: 5)
                .padding(.horizontal)
                .padding(.bottom, 5)
            }
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(alignment: .top, spacing: 10){
                    ForEach(categories) { category in
                        SpedningCategoryItemView(spedningCategory: category)
                    }
                }
            }
            .padding(.top)
            .padding(.leading)
        }.background(Color("bg_color"))
    }
}

struct StatisitcsSpendingBreakdownView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingCategoriesView()
    }
}
