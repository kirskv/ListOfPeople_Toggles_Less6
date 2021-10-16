//
//  ContentView.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 15.10.2021.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var model = DataRetrival()
    
    var body: some View {
        List(model.peop) {r in
            VStack(alignment: .leading) {
                Text(r.name)
                Text(r.adress)
                Text(r.company)
                Text("Years Of Experience: " + String(r.y))
                }
                
            }
        }
    }


struct ContntView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
