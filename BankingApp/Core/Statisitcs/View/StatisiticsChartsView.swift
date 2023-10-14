//
//  StatisiticsChartsView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import SwiftUI
import Charts

struct StatisiticsChartsView: View {
    var expenses: [ExpensesItem] = ExpensesItem.Mock_Expenses
    
    var body: some View {
        Chart(expenses, id: \.day){ item in
            BarMark(x: .value("Day", item.day), y: .value("Value", item.value))
                .clipShape(Rectangle()).cornerRadius(7)
                .foregroundStyle(by: .value("Value", item.type.name))

            
        }
        .chartForegroundStyleScale([MoneyType.Spending.name: LinearGradient(gradient: Gradient(colors: [.black]), startPoint: .top, endPoint: .bottom), MoneyType.Income.name: LinearGradient(gradient: Gradient(colors: [Color("card_selected_color")]), startPoint: .top, endPoint: .bottom)])

    }
}

struct StatisiticsChartsView_Previews: PreviewProvider {
    static var previews: some View {
        StatisiticsChartsView(expenses: ExpensesItem.Mock_Expenses)
    }
}
