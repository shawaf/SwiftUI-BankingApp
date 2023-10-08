//
//  TransactionRow.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 08/10/2023.
//

import SwiftUI

struct TransactionRow: View {
    let transactionModel : TransactionModel
    
    var body: some View {
        HStack(spacing: 5) {
            Image(transactionModel.logo)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .background(.white)
                .clipShape(Circle())
                .padding(.trailing, 10)
            VStack(alignment: .leading, spacing: 4){
                Text(transactionModel.name)
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Text(transactionModel.date)
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            Spacer()
            Text("- $\(transactionModel.value)")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.black)
        }.padding(.horizontal)
        
    }
}

struct TransactionRow_Previews: PreviewProvider {
    static var previews: some View {
        TransactionRow(transactionModel: TransactionModel.Mock_Transactions[0])
    }
}
