//
//  main.swift
//  practiceexam
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

var p1 = Product(manufId: 1 , manufName: "Naina", prodId: 1, prodName: "Pen", price: 25.00, quant: 2 )
p1.printDetails()

var p2 = Product(manufId: 2 , manufName: "Naia", prodId: 2, prodName: "Pn", price: 25.00, quant: 2 )
p2.printDetails()

var p3 = Product(manufId: 3, manufName: "PQR", prodId: 300, prodName: "Floppy Disk", price: 50.0, quant: 3)

var p4 = Product(manufId: 4, manufName: "LMN", prodId: 400, prodName: "Monitor", price: 300.0, quant: 4)
var o1 = order(orderId: 1, orderDate: Date(), productArray: [p1,p2])
o1.printDetails()

//Add Order to Dictionary
order.addOrder(order: o1)
var o2 = order(orderId: 2, orderDate: Date(), productArray: [p3,p2])
o2.printDetails()

//Add Order to Dictionary
order.addOrder(order: o2)
var o3 = order(orderId: 3, orderDate: Date(), productArray: [p1,p4,p2])
o1.printDetails()

//Add Order to Dictionary
order.addOrder(order: o3)


order.sortOrderByTotal()



print("\n\n//////////////// MY SELECTED ORDER /////////////////")
if let myOrder = order.getOrderById(orderId: 2)
{
    print(myOrder.printDetails())
}else{
    print("NO Order FOUND WITH GIVEN ID")
}

