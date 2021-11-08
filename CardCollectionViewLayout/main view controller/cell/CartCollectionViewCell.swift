//
//  CardCollectionViewCell.swift
//  CardCollectionViewLayout
//
//  Created by Ragaie Alfy on 11/8/21.
//

import UIKit

class CartCollectionViewCell: CardCollectionViewCell {

    
    @IBOutlet weak var cardViewitem: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        //cardViewitem.layer.cornerRadius = 20
        configure(cardView: cardViewitem)
    }
}


