//
//  ItemListview.swift
//  fetch-coding-exercise
//
//  Created by Keerthana Srinivasan on 3/19/24.
//

import SwiftUI

struct ItemListView: View {
    let listId: Int
    var items: [Item]

    var body: some View {
        List {
            HStack {
                Text("ID").bold()
                    .frame(width: 50, alignment: .leading)
                Spacer()
                Text("Name").bold()
                    .frame(alignment: .leading)
                        }
            .font(.headline)
            .padding()
            .background(Color(.systemBackground))

            ForEach(items, id: \.id) { item in
                HStack {
                    Text("\(item.id)").frame(width: 50, alignment: .leading)
                    Spacer()
                    Text(item.name ?? "No name")
                    .frame(alignment: .leading)
                }
                .padding(.vertical)
            }
        }
        .navigationBarTitle("List ID: \(listId)", displayMode: .inline)
    }
}
