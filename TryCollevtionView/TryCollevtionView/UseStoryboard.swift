//
//  UseStoryboard.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

protocol FromStoryboard {
    static func fromStoryboard() -> Self?
}

extension FromStoryboard {
    static func fromStoryboard() -> Self? {
        // Storyboard name expected same name as class name
        let storyboard = UIStoryboard(name: String(describing: Self.self), bundle: Bundle(for: Self.self as! AnyClass))
        return storyboard.instantiateInitialViewController() as? Self
    }
}
