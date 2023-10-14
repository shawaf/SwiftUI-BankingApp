//
//  Extensions.swift
//  BankingApp
//
//  Created by Mohamed Elshawaf on 14/10/2023.
//

import Foundation


extension Sequence  {
    func sum<T: AdditiveArithmetic>(_ predicate: (Element) -> T) -> T { reduce(.zero) { $0 + predicate($1) } }
}
