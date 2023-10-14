//
//  MainTabView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct MainTabView: View {
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        VStack (spacing: -10){
            viewRouter.view
            Spacer()
            HStack (alignment: .center){
                Spacer()
                CustomTabBarButton(viewModel: .Home, viewRouter: viewRouter)
                Spacer()
                CustomTabBarButton(viewModel: .Statistics, viewRouter: viewRouter)
                Spacer()
                CustomTabBarButton(viewModel: .Wallet, viewRouter: viewRouter)
                Spacer()
                CustomTabBarButton(viewModel: .Profile, viewRouter: viewRouter)
                Spacer()
            }
            .frame(height: UIScreen.main.bounds.height/10)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .foregroundColor(Color.white)
            .font(.footnote)
            
        }.ignoresSafeArea()

    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView(viewRouter: ViewRouter())
    }
}

