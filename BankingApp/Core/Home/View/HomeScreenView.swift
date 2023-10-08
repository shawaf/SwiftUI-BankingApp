//
//  HomeView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView(.vertical){
                    MainToolbar(pageTitle: "Home", onlyImage: true)
                    HStack{
                        Text("My Cards")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Button{
                            
                        } label: {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.black)
                                .clipShape(Rectangle())
                        }.padding(.leading, 5)
                        Spacer()
                      
                    }.padding(.leading, 20)
                    .padding(.trailing, 20)
                        ScrollView(.horizontal, showsIndicators: false){
                            LazyHStack(alignment: .top, spacing: 10){
                                ForEach(0..<10, id: \.self) { item in
                                    let cardType = item==0 ? CardType.MASTERCARD : CardType.VISA
                                        CardView(isSelected: item == 0, cardType: cardType)
                                            .shadow(color: Color.gray.opacity(0.2), radius: 5)
                                }
                            }.padding(20)
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
        HomeScreenView()
    }
}
