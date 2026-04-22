//
//  ContentView.swift
//  CH7 BookManager _AR
//
//  Created by Ashley Randle on 3/21/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
//    private let books = [
//        Book(title: "Book 1", author: "Jorge"),
//        Book(title: "Book 2", author: "Jeff"),
//        Book(title: "Book 3", author: "Ashley"),
//        Book(title: "Book 4", author: "Tim")
//    ]
    
    private let books = getBooks()

    var body: some View {
        NavigationSplitView {
            List(books) { book in
                NavigationLink(destination: BookDetailView(book: book)) {
                    BookListItem(book: book)
                }
            }
            
            List {
                ForEach(items) { item in
                    NavigationLink {
                        Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
                    } label: {
                        Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
                    }
                }
                .onDelete(perform: deleteItems)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
        } detail: {
            Text("Select an item")
        }
    }

    private func addItem() {
        withAnimation {
            let newItem = Item(timestamp: Date())
            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(items[index])
            }
        }
    }
}

#Preview {
    ContentView()
        
}
