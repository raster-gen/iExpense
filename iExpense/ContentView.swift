//
//  ContentView.swift
//  iExpense
//
//  Created by Gennady Raster on 12.11.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var expenses = Expenses()
    
    @State private var isShowingAddView = false

        var body: some View {
            NavigationView {
                List {
                    ForEach(expenses.items){ item in
                        Text(item.name)
                    }
                    .onDelete(perform: removeItems)
                }
                .navigationTitle("iExpense")
                .toolbar {
                    Button {
                        
                        isShowingAddView = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $isShowingAddView) {
                    AddView(expenses: expenses)
                }
                
            }
        }
    
//    remove items from list
    func removeItems(at offsets: IndexSet){
        expenses.items.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
