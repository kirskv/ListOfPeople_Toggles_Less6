//
//  ContentView.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 15.10.2021.
//

import SwiftUI

struct ContentView: View {
   
    @EnvironmentObject var model:DataRetrival
    
  
    var tGS = TogglesSw()
    
    var body: some View {
       
        
        List(model.peop) {r in
           
            VStack(alignment: .leading) {
                if model.nameIsOn {
                    Text(r.name)
                }
                if model.adressIsOn {
                    Text(r.adress)
                }
                if model.companyIsOn == true {
                    Text(r.company)
                }
                if model.yearsOfExp == true {
                    Text("Years Of Experience: " + String(r.y))
                
                }
                    
                }
            }
        }
    }


struct ContntView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataRetrival())
    }
}
