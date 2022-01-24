//
//  ContentView.swift
//  LZSwiftUIDemo
//
//  Created by lizhi on 2022/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List{
                Text("Hello, world!")
                    .font(.body)
                    .fontWeight(.regular)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.center)
                    .padding()
                
                NavigationLink(destination: DetailUIView()) {
                    Text("DetailUIView")
                        .font(.title)
                        .foregroundColor(.green)
                }

                NavigationLink(destination: SecondContentView()) {
                    Text("2")
                    
                }
                VStack {
                    Text("3")
                    Text("4")
                }
                
            }
            .navigationBarTitle(Text("标题"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
