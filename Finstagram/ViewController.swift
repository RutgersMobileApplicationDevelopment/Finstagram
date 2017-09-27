//
//  ViewController.swift
//  Finstagram
//
//  Created by Vineeth Puli on 9/26/17.
//  Copyright © 2017 RUMAD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitleLabel: UILabel!
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func loginButtonTapped(_ sender: Any) {
        if userNameTextField.hasText {
            print(userNameTextField.text!)
        } else {
            appTitleLabel.text = "Enter a Username"
        }
        
    }
    
}

