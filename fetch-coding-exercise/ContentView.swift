//
//  ContentView.swift
//  fetch-coding-exercise
//
//  Created by Keerthana Srinivasan on 3/19/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ItemViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.groupedItems.keys.sorted(), id: \.self) { listId in
                NavigationLink(destination: ItemListView(listId: listId, items: viewModel.groupedItems[listId] ?? [])) {
                    Text("List ID: \(listId)")
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("List IDs")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

