//
//  TransactionsView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 08/10/2023.
//

import SwiftUI

struct TransactionsView: View {
    let transactions : [TransactionModel]
    
    var body: some View {
        VStack (spacing: -30){
            HStack {
                Text("Send to moeny")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 23, height: 23)
                    .foregroundColor(Color("card_selected_color"))
                Text("Add recipient")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .frame(height: 90)
            .background(.black)
            .cornerRadius(15)
            .padding(.horizontal)
            
            VStack{
                HStack{
                    Text("Transactions")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    Image(systemName: "arrow.up.arrow.down.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                LazyVStack (spacing: 25){
                    ForEach(transactions) { transaction in
                        TransactionRow(transactionModel: transaction)
                    }
                }.padding(.vertical,10)
                    .background(Color.white)
            }.background(.white)
                .cornerRadius(15)
                .padding()
                .shadow(color: Color.black.opacity(0.1), radius: 15, x: 5, y: 5)
        }
        
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView(transactions: TransactionModel.Mock_Transactions)
    }
}
