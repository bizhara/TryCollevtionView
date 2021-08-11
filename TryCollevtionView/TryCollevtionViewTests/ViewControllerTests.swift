//
//  ViewControllerTests.swift
//  TryCollevtionViewTests
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

import XCTest
@testable import TryCollevtionView

class ViewControllerTests: XCTestCase {
    func testTitleString() {
        let viewModel = ViewController.ViewModel()
        XCTAssertEqual(viewModel.titleString, Bundle.main.infoDictionary?["CFBundleName"] as? String)
    }

    func testNumberOfSections() {
        let viewModel = ViewController.ViewModel()
        XCTAssertEqual(viewModel.numberOfSections, 1)
    }

    func testNumberOfItems() {
        let section = 0
        let viewModel = ViewController.ViewModel()
        XCTAssertEqual(viewModel.numberOfItems(of: section), MockCellData.mockCellData.count)
    }

    func testCellData() {
        let cellIndex = 3
        let viewModel = ViewController.ViewModel()
        let cellData = viewModel.cellData?[cellIndex]
        let mockData = MockCellData.mockCellData[cellIndex]
        XCTAssertEqual(cellData?.titleString, mockData.titleString)
        XCTAssertEqual(cellData?.detailString, mockData.detailString)
    }
}
