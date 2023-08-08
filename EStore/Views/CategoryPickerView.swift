//
//  CategoryPickerView.swift
//  EStore
//
//  Created by Hidayat Abisena on 08/08/23.
//

import SwiftUI

struct CategoryPickerView: View {
    
    let client = StoreHTTPClient()
    @State private var categories: [Category] = []
    @State private var selectedCategory: Category?
    
    let onSelected: (Category) -> Void
    
    var body: some View {
        Picker("Categories", selection: $selectedCategory) {
            ForEach(categories, id: \.id) { category in
                Text(category.name).tag(Optional(category))
            }
        }
        // iOS 17
//        .onChange(of: selectedCategory) { oldValue, category in
//            if let category {
//                onSelected(category)
//            }
//            
//        }
        // iOS 16
        .onChange(of: selectedCategory, perform: { category in
            if let category {
                onSelected(category)
            }
        })
        .pickerStyle(.wheel)
            .task {
                do {
                    categories = try await client.getAllCategories()
                    selectedCategory = categories.first
                } catch {
                    print(error)
                }
            }
    }
}

#Preview {
    CategoryPickerView(onSelected: { _ in })
}

// Xcode 14
//struct CategoryPickerView_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryPickerView(onSelected: { _ in })
//    }
//}

