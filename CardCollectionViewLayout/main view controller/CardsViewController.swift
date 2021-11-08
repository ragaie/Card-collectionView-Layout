//
//  ViewController.swift
//  CardCollectionViewLayout
//
//  Created by Ragaie Alfy on 11/8/21.
//

import UIKit

class CardsViewController: UIViewController {
    @IBOutlet weak var collectionViewitems: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view.
    }
    private func setupView() {
      //  collectionViewItem.backgroundColor = .lightGray
      // collectionViewItem.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
       // collectionView.showsHorizontalScrollIndicator = false
        collectionViewitems.delegate = self
        collectionViewitems.dataSource = self
        collectionViewitems.collectionViewLayout = CardCollectionViewLayout()
    }

}

extension CardsViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard  let cell = collectionView.dequeueReusableCell(withReuseIdentifier:  "CollectionViewCellID", for: indexPath)  as? CartCollectionViewCell else {
                    return UICollectionViewCell()
                }
        return cell
    }
}
