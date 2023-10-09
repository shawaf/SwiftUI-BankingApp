//
//  CustomTabBarButton.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 09/10/2023.
//

import SwiftUI

struct CustomTabBarButton: View {
    var viewModel: TabBarViewModel
    @ObservedObject var viewRouter: ViewRouter
    
    var body: some View {
        Button {
            viewRouter.currentTab = viewModel
        } label:{
            let isSelectedTab = viewRouter.currentTab == viewModel
            VStack (spacing: 6){
                Image(systemName: viewModel.imageName)
                    .foregroundColor(isSelectedTab ? Color("card_selected_color") : .white)
                Text(viewModel.title)
                    .foregroundColor(isSelectedTab ? Color("card_selected_color") : .white)
            }
        }.padding(.bottom, 10)
    }
}
