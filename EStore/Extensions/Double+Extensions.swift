//
//  Double+Extensions.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import Foundation

extension Double {
    
    func formatAsCurrency() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: NSNumber(value: self)) ?? "0.00"
    }
    
}
