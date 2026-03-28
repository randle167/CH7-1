//
//  api.swift
//  CH7
//
//  Created by Ashley Randle on 3/23/26.
//

import Foundation

func getBooks() -> [Book] {
    return [
        Book(
            title: "the book 1",
            author: "author 1",
            summary: "description of book 1"
        ),
        Book(
            title: "the book 2",
            author: "author 2",
            summary: "description of book 2"
        ),
        Book(
            title: "the book 3",
            author: "author 3",
            summary: "description of book 3"
        ),
        Book(
            title: "the book 4",
            author: "author 4",
            summary: "description of book 4"
        )
    ]
}
