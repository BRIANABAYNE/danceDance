//
//  Albums.swift
//  DanceDance
//
//  Created by Briana Bayne on 5/25/24.
//

import Foundation

struct Album: Identifiable, Hashable {
    
    var id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var imageURL : URL?
    
}

let albums: [Album] = [

]
