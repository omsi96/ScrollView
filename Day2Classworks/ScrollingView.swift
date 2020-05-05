//
//  ScrollingView.swift
//  Day2Classworks
//
//  Created by Omar Alibrahim on 5/5/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct ScrollingView: View {
    var movies = ["aladdin",
                  "coco",
                  "greatestshowman",
                  "harrypotter",
                  "toystory"]
    
    var body: some View{
        ScrollView(.horizontal){
            HStack(spacing: 0){
                ForEach(0..<movies.count, id: \.self){ i in
                    Image(self.movies[i]).resizable().scaledToFill()
                }
            }
        }.edgesIgnoringSafeArea(.all).background(Color.black.edgesIgnoringSafeArea(.all))
    }
}






//struct ScrollingView: View {
//    var body: some View {
//        ScrollView(.horizontal){
//            HStack(spacing: 0){
//                Image("aladdin").resizable().scaledToFill()
//                Image("coco").resizable().scaledToFill()
//                Image("greatestshowman").resizable().scaledToFill()
//                Image("harrypotter").resizable().scaledToFill()
//                Image("toystory").resizable().scaledToFill()
//            }
//        }
//        .edgesIgnoringSafeArea(.all)
//        .background(Color.black.edgesIgnoringSafeArea(.all))
//        // The last line is for when you scroll over the top or bottom, you don't get white background,
//
//    }
//}

struct ScrollingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollingView()
    }
}
