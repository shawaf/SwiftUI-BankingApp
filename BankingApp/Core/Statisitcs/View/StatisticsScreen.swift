//
//  StatisticsScreenView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 09/10/2023.
//

import SwiftUI

struct StatisticsScreen: View {
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .leading){
                    PagesToolbar(pageTitle: "Statistics", isLight: true, showProfileImage: true)
                    HStack(spacing: 0){
                        TimeLineItemView(day: "Today", isSelected: false)
                        Divider()
                        TimeLineItemView(day: "Weekly", isSelected: true)
                        Divider()
                        TimeLineItemView(day: "Monthly", isSelected: false)
                        Divider()
                        TimeLineItemView(day: "Yearly", isSelected: false)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    .background(.white)
                    .cornerRadius(30)
                    .shadow(color: Color.black.opacity(0.1), radius: 15, x: 5, y: 5)
                    .padding(.horizontal)
                    HStack{
                        SpendingIncomeView(moneyType: .Spending, moneyValue: "980")
                        Spacer()
                        SpendingIncomeView(moneyType: .Income, moneyValue: "3000")
                    }.padding(.vertical)
                        .padding(.horizontal, 30)
                    
                    StatisiticsChartsView().frame(height: 230).padding().flipsForRightToLeftLayoutDirection(true)
                    
                    Text("Spending Breakdown")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.horizontal)
                    SpendingCategoriesView()
                }.padding(.top, 50)
            }.background(Color("bg_color"))

        }
    }
}

struct StatisticsScreenView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticsScreen()
    }
}
