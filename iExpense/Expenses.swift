//
//  Expenses.swift
//  iExpense
//
//  Created by Gennady Raster on 13.11.22.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}
