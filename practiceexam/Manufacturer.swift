//
//  Manufacturer.swift
//  practiceexam
//
//  Created by MacStudent on 2019-06-20.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation

class Manufacturer : IDisplay
{
    let manufacturerId : Int?
    var mamufacturerName : String?
    
    init(manufId : Int, manufName : String)
    {
        self.manufacturerId = manufId
        self.mamufacturerName = manufName
    }
    
    func printDetails()
    {
        print("Manufacturer Id is : \(self.manufacturerId)")
        print("Manufacturer Name is :\(self.mamufacturerName)")
    }
    
}
