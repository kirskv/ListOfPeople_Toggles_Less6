//
//  PeopleList.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 15.10.2021.
//

import Foundation
class PeopleList: Identifiable, Decodable, ObservableObject {
    
    
    var id:UUID?
    var name:String = ""
    var adress:String = ""
    var company:String = ""
    var y:Int = 0

}

class TogglesSw: ObservableObject {
   
}

