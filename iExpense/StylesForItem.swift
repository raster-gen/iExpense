//
//  StylesForItem.swift
//  iExpense
//
//  Created by Gennady Raster on 13.11.22.
//

import SwiftUI

extension View {
    func styles(for item: ExpenseItem) -> some View {
        switch item.amount {
        case 0 ..< 10:
            return self.font(.body)
            
        case 10 ..< 100:
            return self.font(.title3)
        default:
            return self.font(.title)
        }
    }
}
