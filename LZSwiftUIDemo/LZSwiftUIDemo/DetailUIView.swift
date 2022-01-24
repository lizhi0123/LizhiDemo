//
//  DetailUIView.swift
//  LZSwiftUIDemo
//
//  Created by lizhi on 2022/1/24.
//

import SwiftUI

struct DetailUIView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                    Spacer()
                    Text("California")
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
        DetailUIView()
    }
}
