//
//  CartManager.swift
//  Mazatlan
//
//  Created by Angel Lopez on 6/7/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Double = 0
    @Published private(set) var tax: Double = 1.07
    @Published private(set) var tip: Double = 0
    @Published private(set) var quant: Int = 0
    
    func addToCart(product: Product) {
        if let existingProductIndex = products.firstIndex(where: { $0.id == product.id }) {
            products[existingProductIndex].quantity += 1
        } else {
            let newProduct = product
            newProduct.quantity = 1
            
            products.append(newProduct)
        }
        
        recalculateTotal()
    }
    
    func removeFromCart(product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            let removedProduct = products.remove(at: index)
            total -= removedProduct.price * Double(removedProduct.quantity) * tax
        }
    }
    
    func increaseQuantity(for product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            products[index].quantity += 1
            product.quantity += 1
            recalculateTotal()
        }
    }
    
    func decreaseQuantity(for product: Product) {
        if let index = products.firstIndex(where: { $0.id == product.id }) {
            if products[index].quantity > 1 {
                product.quantity -= 1
                products[index].quantity -= 1
                
            } else {
                products.remove(at: index)
            }
            recalculateTotal()
        }
    }
    
    private func recalculateTotal() {
        total = products.reduce(0) { $0 + $1.price * Double($1.quantity) * tax }
    }
}
