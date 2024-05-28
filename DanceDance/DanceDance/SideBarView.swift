//
//  SideBarView.swift
//  DanceDance
//
//  Created by Briana Bayne on 5/25/24.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List (sidebarItems) { item in
            NavigationLink(value: item) {
                Label(item.name, systemImage: item.icon)
                    .foregroundStyle(.pink)
            } .navigationDestination(for: SideBarItem.self) { item in
                // Menu Item View
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
    }
}



#Preview {
    SideBarView()
}
