//
//  order.swift
//  practiceexam
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class order : IDisplay
{
    var orderId : Int = 0
    var orderDate = Date()
    var productArray : [Product] = [Product]()
  static  var dictOrders = [Int : order]()
  
    
    init (orderId : Int, orderDate : Date , productArray : [Product])
    {
        self.orderId = orderId
        self.orderDate = orderDate
        self.productArray = productArray
        
        //super.init(manufId: manufacturerId, manufName: String)
        
    }
    var orderTotal:Float
    {
        var finalOrderTotal:Float = 0.0
        for product in productArray {
            finalOrderTotal = finalOrderTotal + (product.price! * Float(product.quantity!))
        }
        return finalOrderTotal
    }

    static func addOrder(order: order)
    {
        dictOrders.updateValue(order, forKey: order.orderId)
    }
    
    static func sortOrderByTotal()
    {
        let newOrders = dictOrders.sorted(by:   {o1, o2 in
            return o1.value.orderTotal > o2.value.orderTotal
        })
        
        for o in newOrders
        {
            o.value.printDetails()
            print(o.value)
            
        }
    }
    
    static func getOrderById(orderId:Int) -> order? {
        
        if let order = dictOrders[orderId] {
            return order as order
        }
        else {
            return nil
        }
        
    }
    func printDetails() {
        print("************************* ORDER DETAILS *********************")
        print("Order Id is : \(String(describing: self.orderId))")
        print("Order Date is : \(self.orderDate)")
        print("******************** PRODUCTS DETAILS *******************")
        
        //Some formating required to display
        print("MANUFACTURER ID","MANUFACTURER NAME","PRODUCT ID"," PRODUCT NAME","PRICE","QUANTITY")
        for product in self.productArray {
            product.printDetails()
        }
        
         print("Order Total is : \(self.orderTotal)\n\n\n")
    }
    
    
}
