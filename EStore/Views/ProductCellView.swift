//
//  ProductCellView.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import SwiftUI

struct ProductCellView: View {
    
    let product: Product
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading, spacing: 10) {
                Text(product.title).bold()
                Text(product.description)
            }
            Spacer()
            Text(product.price, format: .currency(code: Locale.currencyCode))
                .padding(5)
                .background {
                    Color.green
                }
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
        }
    }
}

#Preview {
    ProductCellView(product: Product(title: "Handmade Fresh Table", price: 345, description: "Andy shoes are designed to keeping in", images: [URL(string: "https://placeimg.com/640/480/any?r=0.9178516507833767")!], category: Category(id: 1, name: "Clothes", image: "https://placeimg.com/640/480/any?r=0.9178516507833767")))
}

// Xcode 14
//struct ProductCellView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductCellView(product: Product(title: "Handmade Fresh Table", price: 345, description: "Andy shoes are designed to keeping in", images: [URL(string: "https://placeimg.com/640/480/any?r=0.9178516507833767")!], category: Category(id: 1, name: "Clothes", image: "https://placeimg.com/640/480/any?r=0.9178516507833767")))
//    }
//}
