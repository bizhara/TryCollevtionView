//
//  UseStoryboard.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

protocol FromStoryboard {
    static func fromStoryboard<T>() -> T? where T: UIViewController
}

extension FromStoryboard {
    static func fromStoryboard<T>() -> T? where T: UIViewController {
        // Storyboard name expected same name as class name
        let storyboard = UIStoryboard(name: String(describing: T.self), bundle: Bundle(for: T.self))
        return storyboard.instantiateInitialViewController() as? T
    }
}

extension UIViewController: FromStoryboard {}
