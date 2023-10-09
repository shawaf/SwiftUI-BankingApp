//
//  TransactionModel.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 08/10/2023.
//

import Foundation

struct TransactionModel : Identifiable, Codable, Hashable {
    
    let id : String
    let name : String
    let logo : String
    let date : String
    let value : String
    
}

extension TransactionModel {
    
    static var Mock_Transactions : [TransactionModel] =
    [
        .init(id: NSUUID().uuidString, name: "Netflix", logo: "netflix_logo", date: Date().shortDateTime, value: "09.00"),
        .init(id: NSUUID().uuidString, name: "Coursera", logo: "coursera_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Vodafone", logo: "vodafone_logo", date: Date().shortDateTime, value: "100.00"),
        .init(id: NSUUID().uuidString, name: "Apple", logo: "apple_logo", date: Date().shortDateTime, value:  "14.00"),
        .init(id: NSUUID().uuidString, name: "Google", logo: "google_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Netflix", logo: "netflix_logo", date: Date().shortDateTime, value: "09.00"),
        .init(id: NSUUID().uuidString, name: "Coursera", logo: "coursera_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Vodafone", logo: "vodafone_logo", date: Date().shortDateTime, value: "100.00"),
        .init(id: NSUUID().uuidString, name: "Apple", logo: "apple_logo", date: Date().shortDateTime, value:  "14.00"),
        .init(id: NSUUID().uuidString, name: "Google", logo: "google_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Netflix", logo: "netflix_logo", date: Date().shortDateTime, value: "09.00"),
        .init(id: NSUUID().uuidString, name: "Coursera", logo: "coursera_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Vodafone", logo: "vodafone_logo", date: Date().shortDateTime, value: "100.00"),
        .init(id: NSUUID().uuidString, name: "Apple", logo: "apple_logo", date: Date().shortDateTime, value:  "14.00"),
        .init(id: NSUUID().uuidString, name: "Google", logo: "google_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Netflix", logo: "netflix_logo", date: Date().shortDateTime, value: "09.00"),
        .init(id: NSUUID().uuidString, name: "Coursera", logo: "coursera_logo", date: Date().shortDateTime, value: "10.00"),
        .init(id: NSUUID().uuidString, name: "Vodafone", logo: "vodafone_logo", date: Date().shortDateTime, value: "100.00"),
        .init(id: NSUUID().uuidString, name: "Apple", logo: "apple_logo", date: Date().shortDateTime, value:  "14.00"),
        .init(id: NSUUID().uuidString, name: "Google", logo: "google_logo", date: Date().shortDateTime, value: "10.00"),
    ]
}
