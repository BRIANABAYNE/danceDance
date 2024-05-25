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
            List (sidebarItems) { item in
                NavigationLink(value: item.self) {
                    Label(item.name, systemImage: item.icon)
                }
            } .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    VStack (alignment: .leading){
                        Text("Library")
                            .font(.largeTitle)
                        Text("All Music")
                        /// Makes font light
                            .foregroundStyle(.tertiary)
                    }
                }
                ToolbarItem {
                    /// Making the Button with three dots 
                    Button(action: {}, label: {
                        Image(systemName: "ellipsis")
                    })
                }
            }
        } detail: {
            // Album View
           
        }
    }
}

#Preview() {
    ContentView()
}
