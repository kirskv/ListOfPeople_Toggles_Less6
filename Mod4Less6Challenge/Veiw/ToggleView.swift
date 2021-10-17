//
//  ToggleView.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 17.10.2021.
//

import SwiftUI

struct ToggleView: View {
    @State var nameIsOn = true
    @State var adressIsOn = true
    @State var companyIsOn = true
    @State var yearsIsOn = true
    var body: some View {
        VStack {
            Text("Display preferences")
                .font(.title)
                .fontWeight(.bold)
                .padding(.vertical, 30.0)
            Toggle("Show name: ", isOn: $nameIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Toggle("Show adress: ", isOn: $adressIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Toggle("Show company: ", isOn: $companyIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Toggle("Show Years of experience: ", isOn: $yearsIsOn)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            Spacer()
        }
        
      
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
