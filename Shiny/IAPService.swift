//
//  IAPService.swift
//  Shiny
//
//  Created by Mert Avci on 2021-02-02.
//

import Foundation
import StoreKit

class IAPService: NSObject {
    
    private override init() {}
    static let shared = IAPService()
    
    func getProducts() {
        let products: Set <String> = [IAPProduct.consumable.rawValue]
    
        let request = SKProductsRequest(productIdentifiers: products)
        request.delegate = self
    }
}

extension IAPService: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        for products in response.products {
            print(products.localizedTitle)
            print(products.price)
        }
    }
}
