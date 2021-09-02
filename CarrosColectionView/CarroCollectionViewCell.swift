//
//  CarroCollectionViewCell.swift
//  CarrosColectionView
//
//  Created by Henry Bilby on 01/09/21.
//

import UIKit

class CarroCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imagemView : UIImageView!
    @IBOutlet weak var nomeLabel : UILabel!
    
    public func configure (carro : Carro) {
        imagemView.image = UIImage(named: carro.imagem)
        nomeLabel.text = carro.nome
    }
}
