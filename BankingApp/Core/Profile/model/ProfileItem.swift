//
//  File.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 12/10/2023.
//

import Foundation

struct ProfileItem : Identifiable, Codable, Hashable  {
    var id: String = NSUUID().uuidString
    var title : String
    var subTitle : String?
    var icon : String
}

extension ProfileItem {
    
    static var list : [ProfileItem] =
    [
        .init(title: "Credit Card", subTitle: "5 Cards", icon: "creditcard"),
        .init(title: "Address", subTitle: "Add or remove your address", icon: "location"),
        .init(title: "Notifications", subTitle: nil, icon: "bell"),
        .init(title: "Verifications", subTitle: nil, icon: "checkmark.square"),
        .init(title: "Customers support", subTitle: nil, icon: "phone.arrow.down.left"),
        .init(title: "About us", subTitle: nil, icon: "person.2"),
        .init(title: "Logout", subTitle: nil, icon: "rectangle.portrait.and.arrow.forward"),
    ]
}
