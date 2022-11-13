//
//  AddView.swift
//  iExpense
//
//  Created by Gennady Raster on 13.11.22.
//

import SwiftUI

struct AddView: View {
    
    @ObservedObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Person"
    @State private var amount = 0.0
    
    let types = ["Person", "Business"]
    
    var body: some View {
        
        NavigationView{
            Form{
                TextField("Name", text: $name)
                
                Picker("Type", selection: $type){
                    ForEach(types, id: \.self){
                        Text($0)
                    }
                }
                
                TextField("Amount", value: $amount, format: .currency(code: "EUR"))
                    .keyboardType(.decimalPad)
            }
            .navigationTitle("Add new expense")
            .toolbar {
                Button("Save"){
                    let item = ExpenseItem(name: name, type: type, amount: amount)
                    expenses.items.append(item)
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView(expenses: Expenses())
    }
}
