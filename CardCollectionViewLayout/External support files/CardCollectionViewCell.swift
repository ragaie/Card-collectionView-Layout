//
//  CarLensCollectionViewCell.swift
//  CarLensCollectionViewCell
//
//  Copyright © 2018 Netguru. All rights reserved.
//
import UIKit.UICollectionView

open class CardCollectionViewCell: UICollectionViewCell {
    
    /// Indicates if the cell is currently displayed as primary cell.
    public var isCurrentlyPrimary = false

    /// The bottom view of the cell.
    public var cardView: UIView!

    /// Configuration of the cell. Must be called on a start.
    ///
    /// - Parameters:
    ///   - cardView: The bottom view of the cell.
    open func configure(cardView: UIView) {
        self.cardView = cardView
    }
    private func animateViews(toProgress progress: Double) {
        let scale = ((0.5 + (CGFloat(progress))) > 1) ? 1 : (0.5 + CGFloat(progress))
        cardView.transform = .init(scaleX: 1, y:  scale)
    }
    /// - SeeAlso: UICollectionViewCell
    open override func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
        super.apply(layoutAttributes)
        guard let attributes = layoutAttributes as? CardLayoutAttributes else { return }
        isCurrentlyPrimary = !(attributes.progress == 0)
        animateViews(toProgress: attributes.progress)
    }
}
