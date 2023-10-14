//
//  HomeView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView(.vertical){
                    PagesToolbar(pageTitle: "Home", isLight: true, showProfileImage: true)
//                    HStack{
//                        Text("My Cards")
//                            .font(.title3)
//                            .fontWeight(.semibold)
//                            .foregroundColor(.black)
//                        Spacer()
//
//                    }.padding(.leading, 20)
//                    .padding(.trailing, 20)
                        ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack(alignment: .top, spacing: 10){
                                ForEach(0..<10, id: \.self) { item in
                                    if item == 0 {
                                        Button{
                                            
                                        } label: {
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 30, height: 30)
                                                .foregroundColor(.black)
                                                .clipShape(Rectangle())
                                        }.padding(.horizontal)
                                            .frame(minHeight: 180)
                                    }else {
                                        let cardType = item==1 ? CardType.MASTERCARD : CardType.VISA
                                        CardView(isSelected: item == 0, cardType: cardType)
                                            .shadow(color: Color.gray.opacity(0.2), radius: 5)
                                    }
                                }
                            }.padding( 20)
                            
                        }
                    TransactionsView(transactions: TransactionModel.Mock_Transactions)
                }
                .background(Color("bg_color"))
            }
        }
      
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
