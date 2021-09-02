//
//  ViewController.swift
//  CarrosColectionView
//
//  Created by Henry Bilby on 01/09/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var carroCollectionView: UICollectionView!
    
    let carros:[Carro] = [.init(imagem: "argo.jpg", nome: "argo"),
                          .init(imagem: "gol.jpg", nome: "gol"),
                          .init(imagem: "mobi.jpg", nome: "mobi"),
                          .init(imagem: "onix.jpg", nome: "onix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        carroCollectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        carros.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CarroCollectionViewCell", for: indexPath) as? CarroCollectionViewCell {
            cell.configure(carro: carros[indexPath.row])
            return cell
        }
        
        return UICollectionViewCell()
    }
}

