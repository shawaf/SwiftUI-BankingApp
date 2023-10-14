//
//  ExpensesItem.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import Foundation

struct ExpensesItem : Codable, Hashable, Identifiable {
    var id: String = NSUUID().uuidString
    var day:String
    var value:Double
    var type : MoneyType
}

extension ExpensesItem {
    static var Mock_Expenses : [ExpensesItem] =
    [
        .init(day: "Dec 14", value: 100, type: MoneyType.Spending),
        .init(day: "Dec 14", value: 400, type: MoneyType.Income),
        
        .init(day: "Dec 15", value: 500, type: MoneyType.Spending),
        .init(day: "Dec 15", value: 300, type: MoneyType.Income),
        
        .init(day: "Dec 16", value: 1000, type: MoneyType.Spending),
        .init(day: "Dec 16", value: 5000, type: MoneyType.Income),
        
        .init(day: "Dec 17", value: 340, type: MoneyType.Spending),
        .init(day: "Dec 17", value: 555, type: MoneyType.Income),
        
        .init(day: "Dec 18", value: 240, type: MoneyType.Spending),
        .init(day: "Dec 18", value: 300, type: MoneyType.Income),
        
        .init(day: "Dec 19", value: 150, type: MoneyType.Spending),
        .init(day: "Dec 19", value: 200, type: MoneyType.Income),
        
        .init(day: "Dec 20", value: 400, type: MoneyType.Spending),
        .init(day: "Dec 20", value: 100, type: MoneyType.Income),
    ]
}
