//
//  ContentView.swift
//  Landmarks_MRC
//
//  Created by Miranda Ramirez Cospin on 11/3/20.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack {
            //Adding map view
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top) //to extend map to the top edges of the scren
                .frame(height: 300)
            //Adding circle image and position
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            //Text
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack (alignment: .top){
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            //Pushing content to the top of the screen
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name),displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
    }
}
