//
//  MenuItems.swift
//  SamsungCut
//
//  Created by Jawahar Dath Thangirala on 2/4/19.
//  Copyright © 2019 Jawahar T. All rights reserved.
//

import UIKit


class MenuItems:NSObject{
    var sections:[String] = []
    var items:[[MenuItem]] = []
    
    func add(section: String, item:[MenuItem]){
        sections = sections + [section]
        items = items + [item]
    }
}

class PizzaMenuItems: MenuItems {
    override init() {
        super.init()
        
        add(section:"Hair Stylist", item: [
            MenuItem(name:"John"),
            MenuItem(name:"Michael"),
            MenuItem(name:"Andreana"),
            MenuItem(name:"Jawahar"),
            MenuItem(name:"Dath"),
            MenuItem(name:"Anyone")
            ])
    }
    
}
