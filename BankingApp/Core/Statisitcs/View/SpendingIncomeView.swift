//
//  SpendingIncomeView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import SwiftUI

enum MoneyType : Codable{
    case Spending
    case Income

    var name : String {
        switch self {
        case .Spending : return "Spending"
        case .Income : return "Income"
        }
    }
    
    var icon : String {
        switch(self){
        case .Spending : return "arrow.up"
        case .Income : return "arrow.down"
        }
    }
    
}
struct SpendingIncomeView: View {
    let moneyType : MoneyType
    let moneyValue : String

    var body: some View {
        HStack{
            HStack{
                Image(systemName: moneyType.icon)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }.frame(width: 43, height: 45)
                .background(moneyType == .Spending ? .black : Color("card_selected_color"))
                .cornerRadius(15)
            VStack(alignment: .leading, spacing: 2 ){
                Text(moneyType.name)
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                
                Text("$\(moneyValue)")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(.black)
            }
        }
    }
}

struct SpendingIncomeView_Previews: PreviewProvider {
    static var previews: some View {
        SpendingIncomeView(moneyType: MoneyType.Income, moneyValue: "2,200")
    }
}
