//
//  DisplayMovieView.swift
//  AP CompSci Final
//
//  Created by Sophia Perepelitsyn23 on 4/26/23.
//

import SwiftUI

struct DisplayMovieView: View {
    @State var likeIcon = [Int] (repeating: 0, count: 50)
    @State var dislikeIcon = [Int] (repeating: 0, count: 50)
    var body: some View {
        NavigationView{
            
            ZStack{
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Spacer()
                    Text("MOVIES")
                        .fontWeight(.bold)
                        .fontDesign(.serif)
                        .font(.largeTitle)
                  
                    List {
                        ForEach (0 ... movieTitle.count - 1, id: \.self) {index in
                            let movieData = [movieTitle[index],
                                             releaseDate[index],
                                             movieGenre[index],
                                             movieLength[index],
                                             movieID[index]]
                            
                            NavigationLink (destination: DetailView (movieData: movieData)) {
                                
                                
                                ZStack{
                                    HStack{
                                        VStack{
                                            Text(movieData[0])
                                                .fontDesign(.serif)
                                                .foregroundColor(Color("AccentColor"))
                                        }
                                        Text(movieData[1])
                                            .foregroundColor(.gray)
                                            .fontDesign(.serif)
                                        
                                        Image(systemName: "hand.thumbsup.fill")
                                            .font(.system(size:20))
                                            .foregroundColor(greenLike (likeCount: likeIcon[movieData[4]]))
                                    
                                        .onTapGesture {
                                            likeIcon[movieData[4]] = updateLikeCount (count: likeIcon[movieData[4]])
                                            }
                                        
                                        Image(systemName: "hand.thumbsdown.fill")
                                            .font(.system(size:20))
                                            .foregroundColor(redDislike (count: dislikeIcon[movieData[4]]))
                                    
                                        .onTapGesture {
                                            dislikeIcon[movieData[4]] = updateDislikeCount (count: dislikeIcon[movieData[4]])
                                            }
                                       
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


struct DisplayMovieView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayMovieView()
    }
}
