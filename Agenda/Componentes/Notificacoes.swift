//
//  Notificacoes.swift
//  Agenda
//
//  Created by Fabiana Petrovick on 31/12/20.
//  Copyright © 2020 Fabiana Petrovick. All rights reserved.
//

import UIKit

class Notificacoes: NSObject {
    func exibeNotificacoesDeMediaDosAlunos(dicionarioDeMedia:Dictionary<String, Any>) ->
        UIAlertController? {
            if let media = dicionarioDeMedia["media"] as? String {
                let alerta = UIAlertController(title: "Atenção", message: "a media geral dos alunos é: \(media)", preferredStyle: .alert)
                let botao = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alerta.addAction(botao)
                
                return alerta
            }
            return nil
    }
}
