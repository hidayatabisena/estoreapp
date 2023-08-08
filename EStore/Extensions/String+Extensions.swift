//
//  String+Extensions.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import Foundation

extension String {
    
    var isNumeric: Bool {
        Double(self) != nil
    }
    
}
