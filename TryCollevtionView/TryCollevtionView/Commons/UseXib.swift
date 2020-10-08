//
//  UseXib.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

protocol UseXib {
    static var xib: UINib { get }
    static var xibName: String { get }
    static var reuseId: String { get }
}

extension UseXib {
    static var xib: UINib {
        return UINib(nibName: xibName, bundle: nil)
    }
    static var xibName: String {
        // Xib name expected same name as class name
        return String(describing: Self.self)
    }
    static var reuseId: String {
        return xibName
    }
}
