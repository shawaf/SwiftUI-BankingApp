//
//  ViewRouter.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 09/10/2023.
//

import SwiftUI

class ViewRouter : ObservableObject {
    @Published var currentTab : TabBarViewModel = .Home
    
    var view: some View { return currentTab.view}
}
