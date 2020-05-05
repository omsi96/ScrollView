//
//  MoviesListView.swift
//  Day2Classworks
//
//  Created by Omar Alibrahim on 5/4/20.
//  Copyright © 2020 OMAR. All rights reserved.
//

import SwiftUI

struct MoviesListView: View {
    var moviesImages: [UIImage] = [#imageLiteral(resourceName: "aladdin"), #imageLiteral(resourceName: "aladdin"), #imageLiteral(resourceName: "aladdin")]
    var moviesTitles: [String] = ["Aladddin 1", "Aladdin2", "Aladdin 3"]
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: MovieDetails(movieImage: moviesImages[0], movieTitle: moviesTitles[0])) {
                    MovieRow(movieImage: moviesImages[0], movieTitle: moviesTitles[0])
                }
                
                MovieRow(movieImage: moviesImages[1], movieTitle: moviesTitles[1])
                MovieRow(movieImage: moviesImages[2], movieTitle: moviesTitles[2])
                
            }.navigationBarTitle("Movies")
        }
    }
}

struct MoviesListView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesListView()
    }
}

struct MovieRow: View {
    var movieImage: UIImage
    var movieTitle: String
    var body: some View {
        HStack{
            Image(uiImage: movieImage)
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .clipShape(Circle())
            Text(movieTitle)
        }
    }
}
