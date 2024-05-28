//
//  ContentView.swift
//  DanceDance
//
//  Created by Briana Bayne on 5/21/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    

    var body: some View {
        // splits the view into two
        TabView {
            NavigationSplitView {
                /// Where you can add different items in the view on the left
                SideBarView()
            } detail: {
                // Album View
                AlbumsView()
            }.tabItem {
                Label("Browse", systemImage: "music.note")
            }.tag(0)
            
            Text("Favorite")
                .tabItem {
                    Label("Favorite", systemImage: "heart.fill")
                }.tag(1)
            
            Text("PlayList")
                .tabItem {
                    Label("Playlist", systemImage: "play.square.stack")
                }.tag(2)
         } }
}

#Preview() {
    NavigationStack {
        ContentView()
    }
}
