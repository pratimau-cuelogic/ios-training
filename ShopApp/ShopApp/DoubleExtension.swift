//
//  DoubleExtension.swift
//  ShopApp
//
//  Created by Pratima Umbardand on 30/06/16.
//  Copyright © 2016 Pratima Umbardand. All rights reserved.
//

import Foundation

extension Double {
    var rupeesSuffix : String {
        return "\(self) Rs"
    }
    
    var dollarsSuffix : String {
        return "\(self) $"
    }
}
