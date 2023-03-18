//
//  ContentView.swift
//  OboardingSwiftUI
//
//  Created by Saad Sherif on 18/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentTab = 0

    var body: some View {
        TabView(selection: $currentTab,
                content:  {
            ForEach(OnboardingData.list) { viewData in
                OnboardingView(data: viewData)
                    .tag(viewData.id)
            }
        })
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(.page)
        .background(Color(.white))
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
