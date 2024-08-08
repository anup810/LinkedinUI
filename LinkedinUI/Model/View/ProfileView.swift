//
//  ProfileView.swift
//  LinkedinUI
//
//  Created by Anup Saud on 2024-08-08.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment:.leading){
            SearchView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundStyle(.blue)
                Text("photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundStyle(.green)
                Text("video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundStyle(.orange)
                Text("calendar")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfileView()
}
