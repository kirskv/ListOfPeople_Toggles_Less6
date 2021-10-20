//
//  PeopleListModel.swift
//  Mod4Less6Challenge
//
//  Created by Kirill Sokolov on 15.10.2021.
//

import Foundation

class DataRetrival:ObservableObject {
    
   @Published var peop = [PeopleList]()
    
    @Published var nameIsOn = true
    @Published var adressIsOn = true
    @Published var companyIsOn = true
    @Published var yearsOfExp = true
    
    
    init() {
        
        let pathString = Bundle.main.path(forResource: "PeopleListJson", ofType: "json")
        if let path = pathString {
         let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                do {
                let peopleList = try decoder.decode([PeopleList].self, from: data)
                
                    for r in peopleList {
                        r.id = UUID()
                    }
                    
                    self.peop = peopleList
                    }
                   
                
                catch {
                print(error)
                }
            }
            catch {
                print(error)
            }
        }
       
    }
}

