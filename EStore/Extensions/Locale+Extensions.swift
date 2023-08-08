//
//  Locale+Extensions.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import Foundation

extension Locale {
    static var currencyCode: String {
        Locale.current.currency?.identifier ?? "USD"
    }
}
