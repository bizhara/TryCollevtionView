//
//  ViewModelTests.swift
//  TryCollevtionViewTests
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import XCTest
@testable import TryCollevtionView

class ViewModelTests: XCTestCase {
    private let viewModel = ViewController.ViewModel()

    override func setUpWithError() throws {
        viewModel.cellData = MockCellData.mockCellData
    }

    func testTitleString() {
        XCTAssertEqual(viewModel.titleString, Bundle.main.infoDictionary?["CFBundleName"] as? String)
    }

    func testNumberOfSections() {
        XCTAssertEqual(viewModel.numberOfSections, 1)
    }

    func testNumberOfItems() {
        XCTAssertEqual(viewModel.numberOfItems(of: 0), MockCellData.mockCellData.count)
    }
}
