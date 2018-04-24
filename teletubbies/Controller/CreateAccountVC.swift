//
//  CreateAccountVC.swift
//  teletubbies
//
//  Created by Faris Dahleh on 4/24/18.
//  Copyright © 2018 Faris Dahleh. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //Outlets
    
    @IBOutlet var usernameTxt: UITextField!
    @IBOutlet var emailTxt: UITextField!
    @IBOutlet var passwordTxt: UITextField!
    @IBOutlet var userImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                print("registered user!")
            }
        }
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
