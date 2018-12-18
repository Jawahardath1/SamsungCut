//
//  RegisterViewController.swift
//  SamsungCut
//
//  Created by Jawahar T on 12/4/18.
//  Copyright © 2018 Jawahar T. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func registerPressed(_ sender: Any) {
        
        print(emailTextfield)
        print(passwordTextfield)
        
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }
    
}
