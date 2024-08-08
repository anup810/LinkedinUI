//
//  PostCardView.swift
//  LinkedinUI
//
//  Created by Anup Saud on 2024-08-08.
//

import SwiftUI
let samplePostData = PostModel(id: 1, image: "02", title: "Hr", followers: 5, profileImage: "1")
var socialdata: [SocialData] = [
    .init(id: 0, image: "hand.thumbsup", title: "like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")


]

struct PostCardView: View {
    var data: PostModel
    var body: some View {
        VStack(alignment:.leading){
            Rectangle()
                .fill(.gray.opacity(0.3))
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea()
            HStack(alignment:.center){
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70,height: 70,alignment: .leading)
                VStack(alignment:.leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundStyle(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundStyle(.gray)
                }
                Spacer()
                Image(systemName: "ellipsis")
            }.padding(.horizontal)
            Text("Looking for a new course on iOS with swift UI, you are already at great place.")
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity,height: .infinity,alignment: .center)
            HStack(alignment:.center,spacing:50){
                ForEach(socialdata,id: \.self) { data in
                    VStack{
                        Image(systemName: data.image)
                        Text(data.title)
                    }.foregroundStyle(.black.opacity(0.8))
                        .font(.subheadline)

                }
                
            }
            .padding(.horizontal)
            Divider()
        }
       
    }
}

#Preview {
    PostCardView(data:samplePostData)
}
