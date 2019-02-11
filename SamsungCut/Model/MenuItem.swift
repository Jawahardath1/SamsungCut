//
//  MenuItem.swift
//  SamsungCut
//
//  Created by Jawahar Dath Thangirala on 2/4/19.
//  Copyright © 2019 Jawahar T. All rights reserved.
//

import UIKit

class MenuItem: NSObject {
    var name = "None"
//    var price = 0.00
//    var special = false
    override init(){}
    
//    init(name:String,price:Double,special:Bool){
//        self.name = name
//        self.price = price
//        self.special = special
//    }
    
    init(name:String){
        self.name = name
    }
}
