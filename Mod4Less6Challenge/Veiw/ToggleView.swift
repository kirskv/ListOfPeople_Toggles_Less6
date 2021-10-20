//
//  ToggleView.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 17.10.2021.
//

import SwiftUI

struct ToggleView: View {
    
    
    
    @EnvironmentObject var model:DataRetrival
   
    var body: some View {
        
        VStack {
            Text("Display preferences")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, 30.0)
            Toggle("Show name: ", isOn: $model.nameIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Toggle("Show adress: ", isOn: $model.adressIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Toggle("Show company: ", isOn: $model.companyIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Toggle("Show Years of experience: ", isOn: $model.yearsOfExp)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        
      
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
            .environmentObject(DataRetrival())
    }
}
