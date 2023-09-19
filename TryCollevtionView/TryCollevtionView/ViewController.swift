//
//  ViewController.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit
import Foundation

final class ViewController: UIViewController, UseStoryboard {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var collectionView: UICollectionView!

    private let viewModel = ViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()

        Task {
            let result = await viewModel.storeCellData()
            switch result {
            case .success:
                await MainActor.run {
                    collectionView.reloadData()
                }
            case .failure:
                return
            }
        }

        titleLabel.text = viewModel.titleString

        collectionView.collectionViewLayout = createLayout()
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.register(
            CollectionViewCell.xib,
            forCellWithReuseIdentifier: CollectionViewCell.reuseId
        )
    }

    private func createLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout.list(using: .init(appearance: .plain))
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
            let cellData = viewModel.getCellData(by: indexPath.row)
            myCell.setCellData(cellData)
        }
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {

}
