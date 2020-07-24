//
//  ViewController.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, FromStoryboard {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!

    private let viewModel: ViewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = viewModel.titleString

        collectionView.collectionViewLayout = CollectionViewLayout()
        collectionView.register(
            UINib(nibName: CollectionViewCell.nibName, bundle: nil),
            forCellWithReuseIdentifier: CollectionViewCell.reuseId
        )

        viewModel.changedCellDataAction = { [collectionView] () in
            DispatchQueue.main.async {
                collectionView?.reloadData()
            }
        }
        getCellData { [viewModel] cellData in
            viewModel.cellData = cellData
        }
    }

    func getCellData(completion: ([CollectionViewCellData]?) -> Void) {
        completion(MockCellData.mockCellData)
    }
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return viewModel.numberOfSections
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.numberOfItems(of: section)
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseId, for: indexPath)
        if let myCell = cell as? CollectionViewCell {
            myCell.cellData = viewModel.cellData?[indexPath.row]
        }
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {

}
