//
//  CadastroController.swift
//  Projeto Lojas
//
//  Created by Johnnys on 06/11/2018.
//  Copyright © 2018 com.iesb. All rights reserved.
//

import RealmSwift
import Realm

class CadastroController {
    
    func saveUser(nome: String, email: String, password: String, phone: String, age: String) -> Bool{
        let newUser = Usuario()
        newUser.nome = nome
        newUser.email = email
        newUser.senha = password
        newUser.telefone = phone
        newUser.idade = Int(age)!
        newUser.foto = "user-logo"
    
        do {
            let realm = try! Realm()
            
            try! realm.write {
                realm.create(Usuario.self, value:newUser, update: true)
            }
            
            return true
            
        } catch {
            print("erro ao Cadastrar")
            return false
        }
    }

}
