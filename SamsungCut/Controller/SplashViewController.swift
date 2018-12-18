//
//  SplashViewController.swift
//  SamsungCut
//
//  Created by Jawahar T on 12/4/18.
//  Copyright © 2018 Jawahar T. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.isUserAlreadyLoggedIn()}
    }
    
    func isUserAlreadyLoggedIn() {
        
        self.performSegue(withIdentifier: "goToHome", sender: self)
    }

}
