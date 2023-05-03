//
//  ViewModel.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import Foundation

extension ViewController {
    class ViewModel {
        var titleString: String? {
            return Bundle.main.infoDictionary?["CFBundleName"] as? String
        }

        var changedCellDataAction: (() async -> Void)?
        private(set) var cellData: [CollectionViewCellData]? {
            didSet {
                Task {
                    await changedCellDataAction?()
                }
            }
        }

        var numberOfSections: Int {
            return 1
        }

        init() {
            getCellData { [weak self] gotData in
                self?.cellData = gotData
            }
        }

        private func getCellData(completion: ([CollectionViewCellData]?) -> Void) {
            completion(MockCellData.mockCellData)
        }

        func numberOfItems(of section: Int) -> Int {
            return section == 0 ? cellData?.count ?? 0 : 0
        }
    }
}
