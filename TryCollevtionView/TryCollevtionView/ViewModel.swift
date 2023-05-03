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

        private var cellData: [CollectionViewCellData]?

        var numberOfSections: Int {
            return 1
        }

        func storeCellData() async -> Result<Any, Error> {
            cellData = await MockCellData.getMockData()
            return .success(())
        }

        func getCellData(by row: Int) -> CollectionViewCellData? {
            return cellData?[row]
        }

        func numberOfItems(of section: Int) -> Int {
            return section == 0 ? cellData?.count ?? 0 : 0
        }
    }
}
