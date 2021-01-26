//
//  ContentView.swift
//  autonomous
//
//  Created by ThuTrangT5 on 23/01/2021.
//

import SwiftUI

struct ContentView: View {
    @State var searchKey: String = ""
    
    
    var body: some View {
        VStack {
            HStack {
                TextField("enter city name", text: $searchKey)
                    .padding(5)
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(kTinColor,
                                    lineWidth: 2))
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        
                        .frame(width: 30, height: 30)
                })
                
            }
            
        }
        .padding(5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
