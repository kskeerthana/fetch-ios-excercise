//
//  ItemViewModel.swift
//  fetch-coding-exercise
//
//  Created by Keerthana Srinivasan on 3/19/24.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var groupedItems: [Int: [Item]] = [:]

    init() {
        loadItems()
    }

    func loadItems() {
        guard let url = Bundle.main.url(forResource: "fetch-hiring", withExtension: "json") else { return }
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            var items = try decoder.decode([Item].self, from: data)
            items = items.filter { $0.name != nil && $0.name != "" }
//            items.sort() // This will sort by listId, then by name because of your Comparable conformance
//            groupedItems = Dictionary(grouping: items, by: { $0.listId })
            let filteredSortedItems = items.filter { $0.name != nil && $0.name != "" }.sorted()
            groupedItems = Dictionary(grouping: filteredSortedItems, by: { $0.listId })
        } catch {
            print("Error loading and processing JSON data: \(error)")
        }
    }
}



