//
//  LoginController.swift
//  Projeto Lojas
//
//  Created by Johnnys on 08/11/2018.
//  Copyright © 2018 com.iesb. All rights reserved.
//
import RealmSwift
import Realm

class LoginController {

    func checkCredentials(email: String, password: String) -> Usuario?{
        do {
            let users = try Realm().objects(Usuario.self).filter("email == %@ AND senha == %@", email, password)
            return users[0]
        } catch {
            return nil
        }
    }
}
