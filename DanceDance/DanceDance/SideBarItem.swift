//
//  SideBarItem.swift
//  DanceDance
//
//  Created by Briana Bayne on 5/25/24.
//

import Foundation

struct SideBarItem: Identifiable, Hashable {
   
    var id = UUID()
    var name: String
    var icon: String
//    let imageURL: URL?
   
}


let sidebarItems: [SideBarItem] = [
SideBarItem(name: "Recently Added", icon: "clock"),
SideBarItem(name: "Artists", icon: "music.mic"),
SideBarItem(name: "Albums", icon: "square.stack"),
SideBarItem(name: "Songs", icon: "music.note"),
SideBarItem(name: "Made For You", icon: "person.crop.square")
]
