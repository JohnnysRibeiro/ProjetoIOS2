//
//  PerfilViewController.swift
//  Projeto Lojas
//
//  Created by Renê Xavier on 27/09/18.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import UIKit

class PerfilViewController: UIViewController {

    @IBOutlet weak var userLogo: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userEmailLabel: UILabel!
    @IBOutlet weak var userPhoneLabel: UILabel!
    let controller = PerfilController()
    var userEmail: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let user = controller.findUser(userEmail: userEmail){
            userNameLabel.text = user.nome
            userEmailLabel.text = user.email
            userPhoneLabel.text = user.telefone
            userLogo.image = UIImage(named: user.foto)
        }
    }

}
