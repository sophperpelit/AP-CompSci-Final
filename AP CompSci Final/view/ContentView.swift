//
//  ContentView.swift
//  AP CompSci Final
//
//  Created by Sophia Perepelitsyn23 on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Color ("BackgroundColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Image ("reelImage")
                        .resizable()
                        .frame(width:200, height:170)
                    Text("Choose a Movie!")
                        .foregroundColor (Color("AccentColor"))
                        .font(.title)
                        .bold()
                        .fontWidth(.expanded)
                        .fontDesign(.serif)
                    NavigationLink {
                        DisplayMovieView ()
                    } label: {
                        Button(text: "See Movies")
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
