//
//  PokeCell.swift
//  pokeApp
//
//  Created by Brian Baragar on 16/03/21.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var imagePokemon: UIImageView!
    @IBOutlet weak var namePokemon: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    private func setupUI(){
        view.roundedView()
    }

}
