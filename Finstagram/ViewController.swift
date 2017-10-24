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
    
    var username : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(UserDefaults.standard.bool(forKey: "loggedInBefore")) {
            self.username = UserDefaults.standard.string(forKey: "username")
            print(UserDefaults.standard.bool(forKey: "loggedInBefore"))
            
            DispatchQueue.global(qos: .userInitiated).async {
                self.performSegue(withIdentifier: "usernameSegue", sender: self)
            }
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func loginButtonTapped(_ sender: Any) {
        if userNameTextField.hasText {
            
            UserDefaults.standard.set(true, forKey: "loggedInBefore")
            UserDefaults.standard.set(userNameTextField.text, forKey: "username")
            
            print(userNameTextField.text!)
            username = userNameTextField.text
            self.performSegue(withIdentifier: "usernameSegue", sender: self)
            
        } else {
            appTitleLabel.text = "Enter a Username"
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "usernameSegue"{
            let tabController = segue.destination as! TabBarViewController
            let navigationController = tabController.viewControllers![0] as! NavigationController
            let feedController = navigationController.topViewController as! FeedTableViewController
            feedController.username = self.username
            
        }
    }
    
}

