//
//  CollectionViewCell.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell, UseXib {
    @IBOutlet private weak var titleLabel: UILabel! {
        didSet {
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    @IBOutlet private weak var detailLabel: UILabel! {
        didSet {
            detailLabel.translatesAutoresizingMaskIntoConstraints = false
        }
    }

    var cellData: CollectionViewCellData? {
        didSet {
            if let cellData = cellData {
                titleLabel.text = cellData.titleString
                detailLabel.text = cellData.detailString
            } else {
                titleLabel.text = nil
                detailLabel.text = nil
            }
        }
    }

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        let layoutAttributes = super.preferredLayoutAttributesFitting(layoutAttributes)
        layoutIfNeeded()
        layoutAttributes.frame.size = systemLayoutSizeFitting(
            UIView.layoutFittingCompressedSize,
            withHorizontalFittingPriority: .required,
            verticalFittingPriority: .fittingSizeLevel
        )
        return layoutAttributes
    }
}
