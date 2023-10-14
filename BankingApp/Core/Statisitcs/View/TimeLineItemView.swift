//
//  TimeLineView.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import SwiftUI

struct TimeLineItemView: View {
    let day : String
    let isSelected : Bool
    
    var body: some View {
        VStack{
            Text(day)
                .frame(maxWidth: .infinity, maxHeight:.infinity)
                .background(isSelected ? Color("card_selected_color") : .clear)
                .foregroundColor(isSelected ? .white : .black)
        }
    }
}

struct TimeLineView_Previews: PreviewProvider {
    static var previews: some View {
        TimeLineItemView(day: "Today", isSelected: true)
    }
}
