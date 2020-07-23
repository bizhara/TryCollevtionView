//
//  ViewController.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FromStoryboard {
    @IBOutlet private weak var titleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = Bundle.main.infoDictionary?["CFBundleName"] as? String
    }
}
