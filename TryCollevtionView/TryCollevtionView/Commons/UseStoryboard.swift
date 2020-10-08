//
//  UseStoryboard.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

protocol UseStoryboard {
    static var fromStoryboard: Self? { get }
    static var storyboardName: String { get }
}

extension UseStoryboard {
    static var fromStoryboard: Self? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateInitialViewController() as? Self
    }
    static var storyboardName: String {
        // Storyboard name expected same name as class name
        return String(describing: Self.self)
    }
}
