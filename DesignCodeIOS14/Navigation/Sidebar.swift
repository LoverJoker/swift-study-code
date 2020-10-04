//
//  Sidebar.swift
//  DesignCodeIOS14
//
//  Created by Joker Liang on 2020/10/4.
//

import SwiftUI

struct Sidebar: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink( destination:  CurseView()) {
                    Label("Curses", systemImage: "book.closed")
                }
                Label("Curses", systemImage: "book.closed")
                Label("Curses", systemImage: "book.closed")
            }
            .listStyle(SidebarListStyle())
            .navigationTitle("learn")
            .toolbar {
                ToolbarItem(placement: .automatic) {
                    Image(systemName: "person.crop.circle")
                }
            }
            
            CurseView()
        }
        
        
        
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
