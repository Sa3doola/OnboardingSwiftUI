//
//  SplashScreen.swift
//  OboardingSwiftUI
//
//  Created by Saad Sherif on 18/03/2023.
//

import SwiftUI


struct SplashScreen: View {
    
    let boltLogoTransition = UIScreen.main.bounds.width * 1.5
    let carLogoTransition = UIScreen.main.bounds.width * 1.5 * (-1)
    let nameLogoTransition = UIScreen.main.bounds.height * 1.5
    
    var body: some View {
        VStack{
            HStack {
                Image("Splash1")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline:.now() + 1) {
                            withAnimation(.easeIn(duration: 1.0)) {
                                print("SSSSS")
                            }
                        }
                    }
        
                Image("Splash2")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline:.now() + 1) {
                            withAnimation(.easeIn(duration: 1.0)) {
                                print("SSSSS")
                            }
                        }
                    }
            }
            Image("Splash3")
                .resizable()
                .frame(width: 200, height: 100)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline:.now() + 1) {
                        withAnimation(.easeIn(duration: 1.0)) {
                            print("SSSSS")
                        }
                    }
                }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
