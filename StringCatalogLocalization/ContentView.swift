//
//  ContentView.swift
//  StringCatalogLocalization
//
//  Created by Shah Md Imran Hossain on 6/6/24.
//

import SwiftUI

struct ContentView: View {
    @State private var loveCounter = 3000
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                HStack {
                    Text("I love you")
                    Text("\(loveCounter)")
                        .bold()
                        .foregroundStyle(Color.red)
                }
                
                Spacer()
                
                HStack {
                    Button("Reset") {
                        loveCounter = 3000
                    }
                    
                    Spacer()
                    
                    Button("Random") {
                        loveCounter = Int.random(in: 1...999999999999999999)
                    }
                }
                .padding()
            }
            .navigationTitle("Localization App")
        }
    }
}

#Preview {
    ContentView()
}
