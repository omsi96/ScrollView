//
//  BindingExample2.swift
//  Day2Classworks
//
//  Created by Omar Alibrahim on 5/4/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct BindingExample2: View {
    @State var counter: Int = 0
    var thekr = "آية الكرسي"
    var body: some View {
        NavigationView {
            List{
                NavigationLink(destination: DetailsThekr(thekr: thekr, counter: $counter)) {
                    VStack{
                        Text("آية الكرسي")
                        Text("\(counter)")
                    }
                }
                
                Text("سورة الإخلاص")
                Text("سورة الفلق")
                Text("سورة الناس")
            }.navigationBarTitle("أذكاري")
        }
    }
}

struct BindingExample2_Previews: PreviewProvider {
    static var previews: some View {
        BindingExample2()
    }
}
