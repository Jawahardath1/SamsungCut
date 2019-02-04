//
//  CheckInViewController.swift
//  SamsungCut
//
//  Created by Jawahar T on 12/26/18.
//  Copyright © 2018 Jawahar T. All rights reserved.
//

import UIKit
import DLRadioButton
import iOSDropDown

class CheckInViewController: UIViewController {

    
    @IBOutlet weak var guestName: UITextField!
    
    @IBOutlet var customData: [DropDown]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let option =  Options()
        //print("Selected GuestName: \(guestName.text)")
        
        print(customData.count)
        
        // Custom DropDown Data
        self.customData[0].optionArray = option.countries
        self.customData[0].optionIds = option.ids
        self.customData[0].isSearchEnable = false
        
        self.customData[1].optionArray = option.countries
        self.customData[1].optionIds = option.ids
        self.customData[1].isSearchEnable = false
        
        self.customData[0].didSelect(completion: { (selected, index, id)  in
//            self.mainDropDown.isSearchEnable = Bool(selected)!
            print("Selected Collection1 String: \(selected) \n index: \(index) \n Id: \(id)")
        })
        
        self.customData[1].didSelect(completion: { (selected, index, id) in
            if #available(iOS 11.0, *) {
                print("Selected Collection2 String: \(selected) \n index: \(index) \n Id: \(id)")
            } else {
                // Fallback on earlier versions
            }
        })
        
        //segment.addTarget(self, action: #selector(CheckInViewController.segmentedDidChange(_:)), for: .valueChanged)
        
    }

    @objc func segmentedDidChange(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
//        if index == 0 {
//            customView.isHidden = true
//            cstmbutn.isHidden = false
//        }else{
//            customView.isHidden = false
//
//        }
        
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
