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
                    Image(systemName: "list.bullet")
                    Text("tab1")
            }
            }
            ToggleView()
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape")
                        Text("tab2")
                }
                }
        }
        
    }
}
struct TabPageView_Previews: PreviewProvider {
    static var previews: some View {
        TabPageView()
            .environmentObject(DataRetrival())
    }
}
