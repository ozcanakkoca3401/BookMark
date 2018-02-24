//
//  Section.swift
//  BookmarkMobile
//
//  Created by Umut on 22.02.2018.
//  Copyright © 2018 Nookmark. All rights reserved.
//

import Foundation

struct Section {
    var genre: String!
    var movies: [String]!
    var expanded: Bool!
    
    init(genre: String, movies: [String], expanded: Bool) {
        self.genre = genre
        self.movies = movies
        self.expanded = expanded
    }
}


struct SectionData {
    var dataType: String!
    var usedData:String!
    var usableData:String!
    var expanded: Bool!
    
    init(dataType: String,usedData: String, usableData: String, expanded: Bool) {
        self.dataType = dataType
        self.usedData = usedData
        self.usableData = usableData
        self.expanded = expanded
    }
}
