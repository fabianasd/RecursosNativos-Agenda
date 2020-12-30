//
//  HomeTableViewCell.swift
//  Agenda
//
//  Created by Fabiana Petrovick on 23/12/20.
//  Copyright © 2020 Fabiana Petrovick. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var imageAluno: UIImageView!
    @IBOutlet weak var labelNomeDoAluno: UILabel!
    
    func configuraCelula(_ aluno:Aluno) {
        labelNomeDoAluno.text = aluno.nome
        imageAluno.layer.cornerRadius = imageAluno.frame.width / 2
        imageAluno.layer.masksToBounds = true
        if let imagemDoAluno = aluno.foto as? UIImage {
            imageAluno.image = imagemDoAluno
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}
