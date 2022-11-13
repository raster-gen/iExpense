//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Gennady Raster on 13.11.22.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
