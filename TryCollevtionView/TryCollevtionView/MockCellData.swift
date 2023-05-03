//
//  MockCellData.swift
//  TryCollevtionView
//
//  Created by kazuaki on 2020/07/23.
//  Copyright © 2020 KH. All rights reserved.
//

struct MockCellData {
    static let mockCellData = [
        CollectionViewCellData(title: "1: セルタイトル", detail: "説明テキスト"),
        CollectionViewCellData(title: "2: 1行に入り切らないセルタイトルにすると末尾が省略表示になる設定だがどうだろうか？", detail: "説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？"),
        CollectionViewCellData(title: "3: セルタイトル", detail: "説明テキスト"),
        CollectionViewCellData(title: "4: 1行に入り切らないセルタイトルにすると末尾が省略表示になる設定だがどうだろうか？", detail: "説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？"),
        CollectionViewCellData(title: "5: セルタイトル", detail: "説明テキスト"),
        CollectionViewCellData(title: "6: 1行に入り切らないセルタイトルにすると末尾が省略表示になる設定だがどうだろうか？", detail: "説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？"),
        CollectionViewCellData(title: "7: セルタイトル", detail: "説明テキスト"),
        CollectionViewCellData(title: "8: 1行に入り切らないセルタイトルにすると末尾が省略表示になる設定だがどうだろうか？", detail: "説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？"),
        CollectionViewCellData(title: "9: セルタイトル", detail: "説明テキスト"),
        CollectionViewCellData(title: "10: 1行に入り切らないセルタイトルにすると末尾が省略表示になる設定だがどうだろうか？", detail: "説明は複数行の設定にしてあるので、全部表示されるのが正解なのだが、どうだろうか？")
    ]

    static func getMockData() async -> [CollectionViewCellData] {
        var mockDataArray = [CollectionViewCellData]()
        for mockData in mockCellData {
            let newData = CollectionViewCellData(title: mockData.titleString, detail: mockData.detailString)
            mockDataArray.append(newData)
        }
        return mockDataArray
    }
}
