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

class CheckInViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var delegate:MenuItemSelectionDelegate! = nil
    var menuItem = MenuItem()
    
    let listItems = [("Hairstylist", "First Available"),
                     ("Time Estimated", "9.45 AM"),
                    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let(title, titleValue) = listItems[indexPath.row]
        cell.textLabel?.text = title
        cell.detailTextLabel?.text = titleValue
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return nil
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    func didSelectMenuItem(controller: UITableViewController, menuItem: MenuItem) {
        
        self.menuItem = menuItem
        navigationItem.title = menuItem.name
        if controller.navigationController?.popViewController(animated: true) == nil {return}
        
        print(navigationItem.title as Any)
        //selectedOption.text = navigationItem.title
        
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
