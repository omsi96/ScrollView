//
//  DetailsThekr.swift
//  Day2Classworks
//
//  Created by Omar Alibrahim on 5/4/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct DetailsThekr: View {
    var thekr: String
    @Binding var counter: Int
    var body: some View {
        VStack{
            Text(thekr)
            Text("\(counter)")
                .font(.system(size: 100))
                .onTapGesture {
                    self.counter += 1
            }
        }
    }
}


