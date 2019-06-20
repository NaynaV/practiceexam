//
//  Product.swift
//  practiceexam
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Product : Manufacturer

{
    let productId : Int?
    var productName : String?
    var price : Float?
    var quantity : Int?
    
    var getProductPrice : Float?
    
{
    get{
    return price
    }
    
    }
    var getQuantity  :Int?
    {
        get{
            return quantity
        }
    }
    
    init(manufId : Int, manufName : String, prodId : Int , prodName : String, price : Float, quant : Int)
    {
        self.productId = prodId
        self.productName = prodName
        self.price = price
        self.quantity = quant
        super.init(manufId: manufId, manufName: manufName)
    
    }
    
    override func printDetails() {
        print(self.manufacturerId!, self.mamufacturerName!, self.productId!, self.productName!, self.price!, self.quantity!, separator :"\t")
    }
    
}
