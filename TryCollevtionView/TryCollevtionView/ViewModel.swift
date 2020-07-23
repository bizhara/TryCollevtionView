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

        var changedCellDataAction: (() -> Void)?
        var cellData: [CollectionViewCellData]? {
            didSet {
                changedCellDataAction?()
            }
        }
        var numberOfSections: Int {
            return 1
        }
        func numberOfItems(of section: Int) -> Int {
            return section == 0 ? cellData?.count ?? 0 : 0
        }
    }
}
