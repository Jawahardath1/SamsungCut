//
//  CheckInViewController.swift
//  SamsungCut
//
//  Created by Jawahar T on 12/26/18.
//  Copyright © 2018 Jawahar T. All rights reserved.
//

import UIKit
import DLRadioButton

class CheckInViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func selectServiceButton(_ sender: DLRadioButton) {
        
        if(sender.isMultipleSelectionEnabled) {
            for button in sender.selectedButtons() {
                print(String(format: "%@ is selected.", button.titleLabel!.text!))
            }
        } else {
            print(String(format: "%@ is selected.", sender.selected()!.titleLabel!.text!))
        }
    }
}
