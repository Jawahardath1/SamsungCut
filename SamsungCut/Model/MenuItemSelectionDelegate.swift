//
//  MenuItemSelectionDelegate.swift
//  SamsungCut
//
//  Created by Jawahar Dath Thangirala on 2/4/19.
//  Copyright © 2019 Jawahar T. All rights reserved.
//

import UIKit

protocol MenuItemSelectionDelegate{
    func didSelectMenuItem(controller: UITableViewController, menuItem:MenuItem)
}

