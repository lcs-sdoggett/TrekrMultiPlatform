//
//  TipsList.swift
//  TrekrMultiPlatform
//
//  Created by Doggett, Scott on 2021-01-25.
//

import SwiftUI

struct TipsList: View {
    
    // This view creates has it's own source of truth
    let tips: [Tip]
    
    var body: some View {
        
        List(tips, id: \.text) { tip in
            
            // If there are children on this tip
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubbles")
            } else {
                Text(tip.text)
            }
            
        }
        
    }
    
    init() {
        
        // Get pointer to file
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file to the array
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
