//
//  ContentView.swift
//  Landmarks_MRC
//
//  Created by Miranda Ramirez Cospin on 11/3/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //Adding map view
            MapView()
                .edgesIgnoringSafeArea(.top) //to extend map to the top edges of the scren
                .frame(height: 300)
            //Adding circle image and position
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            //Text
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack (alignment: .top){
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
            //Pushing content to the top of the screen
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
