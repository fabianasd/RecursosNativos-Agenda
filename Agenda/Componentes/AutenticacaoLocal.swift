//
//  AutenticacaoLocal.swift
//  Agenda
//
//  Created by Fabiana Petrovick on 01/01/21.
//  Copyright © 2021 Fabiana Petrovick. All rights reserved.
//

import UIKit
import LocalAuthentication

class AutenticacaoLocal: NSObject {
    
    var error:NSError?
    
    func autorizaUsuario(completion:@escaping(_ autenticacao:Bool) -> Void) {
        let contexto = LAContext()
        if contexto.canEvaluatePolicy(.deviceOwnerAuthentication, error: &error) {
            contexto.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "é necessário autenticação para apagar", reply: { (resposta, erro) in
                completion(resposta)
            })
        }
    }
}
