//
//  BookDetailView.swift
//  CH7
//
//  Created by Ashley Randle on 3/23/26.
//

import SwiftUI

struct BookDetailView: View {
    var book: Book
    
    var body: some View {
        VStack {
            HStack {
//                Image(book.cover)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 100, height: 100)
                
                VStack {
                    Text(book.title)
                    Text("By: \(book.author)")
                }
            }
            Text(book.summary)
        }
    }
}
