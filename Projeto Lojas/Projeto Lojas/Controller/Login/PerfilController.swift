//
//  PerfilController.swift
//  Projeto Lojas
//
//  Created by Johnnys on 07/11/2018.
//  Copyright © 2018 com.iesb. All rights reserved.
//
import RealmSwift
import Realm

class PerfilController {

    func findUser(userEmail: String) -> Usuario?{
        do {
            let users = try Realm().objects(Usuario.self).filter("email == %@", userEmail)
            return users[0]
        } catch {
            return nil
        }
    }
}
