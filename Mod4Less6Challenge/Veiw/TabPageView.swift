//
//  TabPageView.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 17.10.2021.
//

import SwiftUI

struct TabPageView: View {
    var body: some View {
        TabView {
            ContentView()
            .tabItem {
                VStack {
                    Image(systemName: "star")
                    Text("tab1")
            }
            }
               Text("Hello, World")
                .tabItem {
                    VStack {
                        Image(systemName: "pencil")
                        Text("tab2")
                }
                }
        }
    }
}
struct TabPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabPageView()
    }
}
