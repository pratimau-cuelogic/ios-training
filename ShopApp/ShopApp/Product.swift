//
//  Product.swift
//  ShopApp
//
//  Created by Pratima Umbardand on 14/06/16.
//  Copyright © 2016 Pratima Umbardand. All rights reserved.
//

import Foundation

class Product : NSObject {
    var productName : String
    dynamic var productPrice : Double
    
    init(name: String, price: Double) {
        self.productName = name
        self.productPrice = price
    }
}
