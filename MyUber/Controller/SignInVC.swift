//
//  SignInVC.swift
//  MyUber
//
//  Created by Gideon Bamuleseyo on 10/31/17.
//  Copyright © 2017 Bamuleseyo Gideon. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignInVC: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logIn(_ sender: Any) {
        if(emailTextField.text != "" && passswordTextField.text != ""){
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passswordTextField.text!) { (user, error) in
                // ...
            }
        }
    }
    
    @IBAction func signIn(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passswordTextField.text!) { (user, error) in
            
            // ...
        }
    }
    
}
