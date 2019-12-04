//
//  ContentView.swift
//  StretchyHeaderUsingSwiftUI
//
//  Created by ramil on 04.12.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                GeometryReader { geo in
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .offset(y: geo.frame(in: .global).minY > 0 ? -geo.frame(in: .global).minY : 0)
                        .frame(height: geo.frame(in: .global).minY > 0 ? 300 + geo.frame(in: .global).minY : 300)
                    Spacer()
                }.frame(height: 300)
                
                ForEach(0..<18) { _ in
                    HStack(spacing: 15) {
                        Image("2")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 45, height: 45)
                            .clipShape(Circle())
                        VStack {
                            Text("Taylor Swift")
                                .fontWeight(.heavy)
                            Text("Love Story")
                        }
                        Spacer()
                    }.padding(.horizontal, 15)
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
