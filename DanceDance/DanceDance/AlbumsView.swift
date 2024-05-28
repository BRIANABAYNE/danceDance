//
//  AlbumViews.swift
//  DanceDance
//
//  Created by Briana Bayne on 5/28/24.
//

import MusicKit
import SwiftUI


struct AlbumsView: View {
    @State var songs = [Album]()
    
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
                        Button {} label: {
                            Image(systemName: "backward.fill")
                        }
                        Button {} label: {
                            Image(systemName: "pause.fill")
                        }
                        Button {} label: {
                            Image(systemName: "forward.fill")
                        }
                        
                        PlayingCardsView()
                        Button {} label: {
                            Image(systemName: "quote.bubble")
                        }
                        Button {} label: {
                            Image(systemName: "list.bullet")
                        }
                        Button {} label: {
                            Image(systemName: "speaker.wave.3.fill")
                        }
                        
                    }.padding(.vertical, 8)
                    
                }
            }
    }
}

struct PlayingCardsView: View {
    var body: some View {
        HStack {
            AsyncImage(url: URL(string:  "https://www.vulture.com/2014/10/close-examination-of-taylor-swifts-1989-cover.html")) { image in
                image.resizable()
            } placeholder: {
                Rectangle().foregroundStyle(.tertiary)
            }.frame(width: 48, height: 48)
                .cornerRadius(6)
            
            
            VStack(alignment: .leading) {
                Text("T.S. 1989")
                Text("Taylor Swift")
                    .font(.caption2)
                    .foregroundStyle(.tertiary)
            }.frame(width: 160, alignment:.leading)
            
            Button(action: {}) {
                Image(systemName: "ellipsis")
            }.buttonBorderShape(.circle)
        }
        .padding(.all, 8)
        .background(.regularMaterial, in: .rect(cornerRadius: 14))
    }
}
