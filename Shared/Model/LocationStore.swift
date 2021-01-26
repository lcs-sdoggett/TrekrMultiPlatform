//
//  LocationStore.swift
//  TrekrMultiPlatform
//
//  Created by Doggett, Scott on 2021-01-25.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init() {
        
        // Get pointer to file
        let url = Bundle.main.url(forResource: "location", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file to the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        // Sort the list of locations alphabetically by name, in acending order
        places.sort(by: {
            $0.name < $1.name
        })
        
    }
    
}
