//
//  SearchView.swift
//  LinkedinUI
//
//  Created by Anup Saud on 2024-08-07.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack(alignment:.center){
            Image("demo")
                .resizable()
                .ignoresSafeArea()
                .aspectRatio(contentMode: .fit)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .frame(width: 50,height: 50)
            
            //Search bar
            RoundedRectangle(cornerRadius: 8)
                .foregroundStyle(.blue.opacity(0.3))
                .frame(width: 270,height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundStyle(.gray)
                        Spacer()
                    }.padding()
                )
            //MessageBox
            
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundStyle(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 30,height: 30)
            
        }.padding(.vertical)
    }
}

#Preview {
    SearchView()
}
