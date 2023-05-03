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

    private var cellData: CollectionViewCellData? {
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

    func setCellData(_ cellData: CollectionViewCellData?) {
        self.cellData = cellData
    }

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {
        updateConstraintsIfNeeded()
        systemLayoutSizeFitting(
            UIView.layoutFittingCompressedSize,
            withHorizontalFittingPriority: .required,
            verticalFittingPriority: .fittingSizeLevel
        )
        return super.preferredLayoutAttributesFitting(layoutAttributes)
    }
}
