//
//  Product.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import Foundation

struct Product: Codable {
    var id: Int?
    let title: String
    let price: Double
    let description: String
    let images: [URL]?
    let category: Category
}
