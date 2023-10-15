//
//  SpendingCategoryItem.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import Foundation

struct SpendingCategoryItem : Hashable, Identifiable {
    let id: String = NSUUID().uuidString
    var name: String
    var totalSpend: Int
    var icon: String
    var color: String
}

extension SpendingCategoryItem {
    static var Mock_List : [SpendingCategoryItem] = [
        .init(name: "Food & Bav", totalSpend: 100, icon: "fork.knife", color: "card_selected_color"),
        .init(name: "Shopping", totalSpend: 200, icon: "handbag.fill", color: "blue2"),
        .init(name: "Subscribtion", totalSpend: 300, icon: "dollarsign.circle.fill", color: "blue3"),
        .init(name: "Schools", totalSpend: 200, icon: "roman.shade.open", color: "card_selected_color"),
        .init(name: "Trips", totalSpend: 100, icon: "figure.hiking", color: "lightblue"),
        .init(name: "Rent", totalSpend: 40, icon: "house.fill", color: "move"),
        .init(name: "Bills", totalSpend: 600, icon: "note.text", color: "lightergray"),
    ]
}
