//
//  WalletScreenView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 09/10/2023.
//

import SwiftUI

struct WalletScreen: View {
    let transactions: [TransactionModel] = TransactionModel.Mock_Transactions
    var body: some View {
        VStack{
            ScrollView{
                VStack(alignment: .center){
                    PagesToolbar(pageTitle: "Wallet", isLight: false, showProfileImage: true)
                        .padding(.top, 50)
                        .padding(.horizontal)
                    Text("Your Balance")
                        .font(.title2)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                        .padding(.top, 10)
                    Text("$100.930.12")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                    HStack{
                        Spacer()
                        VStack{
                            Image(systemName: "creditcard.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            Text("Deposit")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "creditcard.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            Text("Withdraw")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        VStack{
                            Image(systemName: "paperplane.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.white)
                            
                            Text("Transfer")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(.white)

                        }
                        Spacer()
                    }.frame(height: 100)
                        .background(Color("lightgray"))
                        .cornerRadius(20)
                        .padding()
                    Spacer()
                }
                .frame(height: UIScreen.main.bounds.height/2.3)
                .background(.black)
                .cornerRadius(50)
                .padding(2)

                HStack{
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .padding()
                    Text("Search for activity")
                        .font(.footnote)
                        .foregroundColor(Color("lightgray"))
                    Spacer()
                    
                }
                .frame(height: 60)
                .background(.white)
                .cornerRadius(50)
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 5, y: 5)
                .padding()
                VStack{
                    HStack{
                        Text("Activities")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        Spacer()
                        Button{
                            
                        } label: {
                            Text("This Month")
                                .foregroundColor(.black)
                                .font(.footnote)
                                .fontWeight(.light)
                            Image(systemName: "chevron.down")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 12, height: 10)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.horizontal,5)
                    .padding(.trailing, 15)
                    
                    LazyVStack (spacing: 25){
                        ForEach(transactions) { transaction in
                            TransactionRow(transactionModel: transaction)
                                .padding(.top, 5)
                        }
                    }.padding(.vertical,10)
                        .background(Color.white)
                        .cornerRadius(20)
                }.padding(.horizontal)
                    .padding(.vertical, 5)
            }.background(Color("bg_color"))
        }
    }
}

struct WalletScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WalletScreen()
    }
}
