//
//  MainTabView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            HomeScreenView()
                .tabItem{ Label("Home", systemImage: "house")}
            VStack{}
                .tabItem{ Label("Statistics", systemImage: "table")}
            
            VStack{}
                .tabItem{ Label("Wallet", systemImage: "folder")}
            
            VStack{}
                .tabItem{ Label("Profile", systemImage: "person")}
            
        }
        .toolbarBackground(Color.black, for: .tabBar)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
