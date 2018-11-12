//
//  CadastroTableViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 06/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit
protocol CadastroTableViewControllerDelegate {
    func realizedRegister(userEmail: String)
}
class CadastroTableViewController: UITableViewController {
    
    var delegate: CadastroTableViewControllerDelegate?
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    @IBOutlet weak var botaoCadastro: UIButton!
    @IBOutlet weak var ageField: UITextField!
    var controller = CadastroController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botaoCadastro.layer.cornerRadius = 16.5
    }

    @IBAction func registerNewUser(_ sender: Any) {
        let register = controller.saveUser(nome: nameField.text!, email: emailField.text!, password: passwordField.text!, phone: phoneField.text!, age: ageField.text!)
        if (register) {
            delegate?.realizedRegister(userEmail: emailField.text!)
            fecharCadastro()
        }
    }
    
    @IBAction func fecharCadastro() {
        self.dismiss(animated: true, completion: nil)
    }
}
