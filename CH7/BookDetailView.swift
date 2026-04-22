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
                
                .font(.title)
            }
        }//edn HStack
        Text(book.summary)
            .lineSpacing(5)
    }//end Vstack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(.horizontal, 30)
        .font(.title3)
        .navigationTitle(book.title)
        .navigationBarTitleDisplayMode(.inline)
    } //end body

#Preview("Sample Book") {
    // Provide a sample book so the preview can render
    let sample = Book(
        title: "Sample Title",
        author: "Sample Author",
        summary: "This is a short summary used only for previewing the layout of BookDetailView.",
        //image:  "lotr_fellowship"
    )
    BookDetailView(book: sample)
}
        
                     
                        

