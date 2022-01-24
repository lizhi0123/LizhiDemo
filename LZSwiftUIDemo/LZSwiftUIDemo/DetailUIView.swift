//
//  DetailUIView.swift
//  LZSwiftUIDemo
//
//  Created by lizhi on 2022/1/24.
//

import SwiftUI

struct DetailUIView: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                        .foregroundColor(.purple)
                    Spacer()
                    Text(landmark.name)
                        .font(.subheadline)
                        .foregroundColor(.red)
                }
                
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct DetailUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailUIView(landmark: landmarkData[0])
    }
}
