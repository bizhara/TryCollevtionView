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
    }
}
