//
//  HomeView.swift
//  AppTemplate
//
//  Created by RTA Media on 6/28/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            Text("این صفحه اصلی است")
                .font(.largeTitle)
                .padding()
            Image(systemName: "house.fill")
                .font(.system(size: 60))
                .foregroundColor(.mint)
        }
    }
}

#Preview {
    HomeView()
}
