//
//  CollectionViewCell.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell, CellNames {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var detailLabel: UILabel!

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
}
