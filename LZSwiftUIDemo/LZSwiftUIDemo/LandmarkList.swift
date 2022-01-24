//
//  LandmarkList.swift
//  LZSwiftUIDemo
//
//  Created by lizhi on 2022/1/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
//        NavigationView {
            List(landmarkData, id: \.id) { landmark in
                NavigationLink {
                    DetailUIView(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
               
            }
//            .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
