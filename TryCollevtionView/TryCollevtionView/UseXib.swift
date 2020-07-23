//
//  UseXib.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

protocol CellNames {
    static var nibName: String { get }
    static var reuseId: String { get }
}

extension CellNames {
    static var nibName: String {
        return String(describing: Self.self)
    }
    static var reuseId: String {
        return String(describing: Self.self)
    }
}
