//
//  AddEditView.swift
//  CH7
//
//  Created by Ashley Randle on 4/22/26.
//

import SwiftUI

struct AddEditView: View {
//    var book: Book?
    
    @State var title: String = ""
    @State var author: String = ""
    @State var summary: String = ""
    @State var genre: Genre = .unknown
    
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header:Text("Book Detail")) {
                    TextField("Title", text: $title)
                    TextField("Author", text: $author)
                    TextEditor(text: $summary)
                    Picker("Genre", selection: $genre) {
                        ForEach(Genre.allCases, id:\.self) { genre in
                            Text(genre.rawValue).tag(genre)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AddEditView()
}
