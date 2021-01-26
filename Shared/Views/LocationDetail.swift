//
//  LocationDetail.swift
//  TrekrMultiPlatform
//
//  Created by Doggett, Scott on 2021-01-25.
//

import SwiftUI

struct LocationDetail: View {
    
    // Location to show detail about
    // A copy of an instance of a structure will provide to this view
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
                
            }
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack {
                Text("Did you know?")
                    .font(.title)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.horizontal)
            
            // Conditionally show the travel advisory
            if !location.advisory.isEmpty {
                
                // Show only the locations "more" text without bottom padding
                Text(location.more)
                    .padding(.horizontal)

                HStack {
                    
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
                
            } else {
                
                // Show only the locations "more" text with the bottom padding included
                Text(location.more)
                    .padding([.horizontal, .bottom])
            }
            
        }
        .navigationTitle(location.name)
        
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: Location.example)
        }
    }
}
