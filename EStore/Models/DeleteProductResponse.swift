//
//  DeleteProductResponse.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import Foundation

struct DeleteProductResponse: Decodable {
    var rta: Bool?
    var statusCode: Int?
    var message: String?
    var error: String?
}
