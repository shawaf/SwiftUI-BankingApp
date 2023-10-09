//
//  TabBarViewModel.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 09/10/2023.
//

import Foundation
import SwiftUI

enum TabBarViewModel: Int, CaseIterable {
    case Home
    case Statistics
    case Wallet
    case Profile
    
    var imageName: String {
        switch self{
        case .Home : return "house"
        case .Statistics : return "table"
        case .Wallet : return "folder"
        case .Profile : return "person"
        }
    }
    
    var title : String {
        switch self{
        case .Home : return "Home"
        case .Statistics : return "Statistics"
        case .Wallet : return "Wallet"
        case .Profile : return "Profile"
        }
    }
    
    var view: some View {
        switch self {
        case .Home : return AnyView(HomeScreenView())
        case .Statistics : return AnyView(StatisticsScreenView())
        case .Wallet : return AnyView(WalletScreenView())
        case .Profile : return AnyView(ProfileScreenView())
        }
    }
}
