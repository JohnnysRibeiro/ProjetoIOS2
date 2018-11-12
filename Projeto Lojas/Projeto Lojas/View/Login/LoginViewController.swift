//
//  LoginViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CadastroTableViewControllerDelegate {
    func realizedRegister(userEmail: String) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let perfilViewController = storyboard.instantiateViewController(withIdentifier: "perfilViewControllerID") as? PerfilViewController{
            perfilViewController.userEmail = userEmail
            self.navigationController?.pushViewController(perfilViewController, animated: true)
        }
    }
    let controller = LoginController()
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var viewLogo: UIView!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func login(_ sender: Any) {
        let login = controller.checkCredentials(email: emailField.text!, password: passwordField.text!)
        if login != nil {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let perfilViewController = storyboard.instantiateViewController(withIdentifier: "perfilViewControllerID") as? PerfilViewController{
                perfilViewController.userEmail = emailField.text!
                self.navigationController?.pushViewController(perfilViewController, animated: true)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? CadastroTableViewController{
            viewController.delegate = self
        }
    }
    
}
