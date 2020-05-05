//
//  ContentView.swift
//  Day2Classworks
//
//  Created by Omar Alibrahim on 5/4/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var athkar = [
        "أستغفر الله",    ]
    @State var athkarCounters = [0,0,0]
    var body: some View {
        VStack {
            ThekrRow(thekr: athkar[0], thekrCounter: $athkarCounters[0])
            Text("You have repeated the thekr for \(athkarCounters[0])")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekrRow: View {
    var thekr: String
    @Binding var thekrCounter: Int
    var body: some View {
        HStack{
            Text(thekr)
                .font(.title)
            Button(action: {
                // do the increment here
                self.thekrCounter += 1
            }) {
                Text("\(thekrCounter)")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            }
                
            .frame(width: 100, height: 100)
            .background(Color.green)
            .clipShape(Circle())
            .padding()
        }
    }
}
