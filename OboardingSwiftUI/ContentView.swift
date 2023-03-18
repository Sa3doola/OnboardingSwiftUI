//
//  ContentView.swift
//  OboardingSwiftUI
//
//  Created by Saad Sherif on 18/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var splashScreen  = true
    
    var body: some View {
        ZStack{
            Group{
                if splashScreen {
                    SplashScreen()
                }
                else{
                    MainView()
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                    self.splashScreen = false
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

struct MainView: View {
    @State private var currentTab = 0
    
    var body: some View {

        VStack {
            TabView(selection: $currentTab,
                    content:  {
                ForEach(OnboardingData.list) { viewData in
                    OnboardingView(data: viewData)
                        .tag(viewData.id)
                }
            })
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
            
            HStack {
                ForEach(0..<OnboardingData.list.count) { index in
                    if index == currentTab {
                        Rectangle()
                            .frame(width: 20, height: 10)
                            .cornerRadius(10)
                            .foregroundColor(.purple)
                    } else {
                        Circle()
                            .frame(width: 10, height: 10)
                            .foregroundColor(.gray)
                    }
                }
            }.padding(.bottom, 24)
        }
    }
}


