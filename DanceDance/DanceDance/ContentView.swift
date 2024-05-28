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
        NavigationSplitView {
            /// Where you can add different items in the view on the left
            SideBarView()
        } detail: {
            // Album View
            AlbumsView()
           
        }
    }
}

#Preview() {
    ContentView()
}

struct AlbumsView: View {
    
    @State private var searchText: String = ""
    let columns: [GridItem] = [GridItem(.adaptive(minimum: 1, maximum: 200))]
    
    var body: some View {
        ScrollView {
            TextField("Search Albums", text: $searchText)
            /// Creates the label
                .textFieldStyle(.roundedBorder)
                .padding(.bottom)
            
            LazyVGrid(columns: columns, spacing: 24) {
                ForEach(albums) { album in
                    Button(action: {}) {
                        VStack (alignment: .leading) {
                            AsyncImage(url: URL(string: album.image)) { image in
                                image.resizable()
                            } placeholder: {
                                Rectangle().foregroundStyle(.tertiary)
                            }.aspectRatio(1, contentMode: .fill)
                                .scaledToFit()
                                .cornerRadius(10)
                            
                            Text(album.title)
                                .lineLimit(1)
                            Text(album.subtitle)
                                .foregroundStyle(.tertiary)
                                .lineLimit(1)
                        }.hoverEffect()
                    }.buttonStyle(.plain)
                }
            }
            
            
        }.padding(.horizontal,24)
        
            .toolbar {
            ToolbarItemGroup(placement: .topBarLeading) {
                VStack (alignment: .leading) {
                    Text("Albums")
                        .font(.largeTitle)
                    Text("48 songs")
                        .foregroundStyle(.tertiary)
                }
            }
            ToolbarItem {
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal.decrease")
                })
            }
        }
            .toolbar {
                ToolbarItemGroup(placement: .bottomOrnament) {
                    HStack {
                        Button
                        })
                    
                    }
                }
            }
    }
}
