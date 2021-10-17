//
//  ContentView.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 15.10.2021.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var model = DataRetrival()
    var toggles = ToggleView()
    var body: some View {
        List(model.peop) {r in
            VStack(alignment: .leading) {
                if toggles.nameIsOn == true {
                    Text(r.name)
                }
                if toggles.adressIsOn == true {
                    Text(r.adress)
                }
                if toggles.companyIsOn == true {
                    Text(r.company)
                }
                if toggles.yearsIsOn == true {
                    Text("Years Of Experience: " + String(r.y))
                }
                
                }
                
            }
        }
    }


struct ContntView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
