//
//  CardView.swift
//  MoneyManagmer
//
//  Created by Mohamed Elshawaf on 07/10/2023.
//

import SwiftUI

struct CardView: View {
    @State var isSelected = false
    let cardType: CardType
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Image(cardType == CardType.VISA ? "visa_logo" : "mastercard_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 15)
                    .padding()
            }
            Spacer()
            Text("Balance")
                .padding(.top)
            HStack {
                Text("USD")
                
                Text("$17.990.399")
                    .font(.headline)
            
            }.padding(.top, 1)
                .padding(.bottom)
            Text("**** **** **** 3213")
                .padding(.bottom)
            
        }
        .frame(width: 170, height: 170)
        .padding(8)
        .background(isSelected ? Color("card_selected_color") : Color.white)
        .foregroundColor(isSelected ? .white : Color.black)
        .font(.caption)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(isSelected: true, cardType: .MASTERCARD)
        CardView(isSelected: false, cardType: .VISA)
    }
}

enum CardType {
    case VISA
    case MASTERCARD
}
