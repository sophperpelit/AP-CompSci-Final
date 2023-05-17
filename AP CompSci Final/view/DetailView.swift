//
//  DetailView.swift
//  AP CompSci Final
//
//  Created by Sophia Perepelitsyn23 on 4/28/23.
//

import SwiftUI

struct DetailView: View {
    var movieData : [String] = []
    var body: some View {
        NavigationView{
            
            
            ZStack{
                Color("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                VStack(spacing:20){
                    Text(movieData[0])
                        .fontDesign(.serif)
                        .font(.largeTitle)
                        .foregroundColor(Color("AccentColor"))
                 //   AsyncImage(
                     //   url:URL(string: movieData[3])!,
                      //  content: { image in
                      //      //  .aspectRatio(contentMode: .fill)
                            // .frame(width:250,height:250)
                    //    },
                   //     placeholder: {
                   //         ProgressView()
                 //       }
                 //   )
                    HStack{
                        
                        Text("Release Year: ")
                            .fontDesign(.serif)
                            .font(.subheadline)
                        Text(movieData[1])
                            .fontDesign(.serif)
                            .font(.headline)
                            .foregroundColor(Color("AccentColor"))
                            .bold()
                    }
                    HStack{
                            Text("Genre: ")
                                .fontDesign(.serif)
                                .font(.subheadline)
                            Text(movieData[2])
                                .fontDesign(.serif)
                                .font(.subheadline)
                                .foregroundColor(Color("AccentColor"))
                                .bold()
                        }
                    HStack{
                            Text("Length: ")
                                .fontDesign(.serif)
                                .font(.subheadline)
                            Text(movieData[3])
                                .fontDesign(.serif)
                                .font(.subheadline)
                                .foregroundColor(Color("AccentColor"))
                                .bold()
                        }
                    }
                    
                }
            }
        }
    }
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
