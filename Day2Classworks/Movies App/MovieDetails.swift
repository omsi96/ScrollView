//
//  MovieDetails.swift
//  Day2Classworks
//
//  Created by Omar Alibrahim on 5/5/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct MovieDetails: View {
    var movieImage: UIImage
    var movieTitle: String
    var body: some View {
        ZStack{
            Image(uiImage: movieImage)
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .scaledToFill()
                .blur(radius: 20)
            
            Color.black.edgesIgnoringSafeArea(.all).opacity(0.4)
            
            VStack {
                Image(uiImage: movieImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                    .shadow(radius: 12)
                
                Text(movieTitle).font(.system(size: 50)).foregroundColor(.white).bold()
                
                
            }
        }
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            MovieDetails(movieImage: #imageLiteral(resourceName: "aladdin"), movieTitle: "Aladdin")
        }
    }
}
