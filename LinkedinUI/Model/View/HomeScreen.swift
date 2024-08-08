//
//  HomeScreen.swift
//  LinkedinUI
//
//  Created by Anup Saud on 2024-08-08.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(spacing:10){
            ProfileView()
            PostView()
        }
      
    }
}

#Preview {
    HomeScreen()
}
