//
//  BookListItem.swift
//  CH7
//
//  Created by Ashley Randle on 3/23/26.
//

import SwiftUI

struct BookListItem: View {
    var book: Book
    
    var body: some View {
        
        VStack {
            Image(book.image)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            
            Text(book.title)
                .font(.headline)
            
            Text("By \(book.author)")
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }

    }
}

