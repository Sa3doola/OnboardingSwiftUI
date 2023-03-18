//
//  OnboardingView.swift
//  OboardingSwiftUI
//
//  Created by Saad Sherif on 18/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    var data: OnboardingData
    
    @State var shouldHide = false

    var body: some View {
        VStack(spacing: 20) {
            ZStack {

                Image(data.objectImage)
                    .resizable()
                    .scaledToFill()
                    .padding(.horizontal, 16)
            }

            Spacer()
            Spacer()

            Text(data.primaryText)
                .font(.title2)
                .bold()

            Text(data.secondaryText)
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(maxWidth: 250)
                .foregroundColor(Color(uiColor: .black))

            Spacer()

            Button(action: {
                print("Complete Task")
            }, label: {
                Text("Learn More")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 50)
                    .padding(.vertical, 16)

                    .background(
                        LinearGradient(
                            gradient: .init(colors: [.blue, .purple]),
                            startPoint: .init(x: -0.33, y: -0.33),
                            endPoint: .init(x: 0.66, y: 0.66)
                        ))
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .buttonStyle(PlainButtonStyle())
            }).hiddenConditionally(isHidden: data.shoulHide)

            Spacer()

        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(data: OnboardingData.list.first!)
    }
}

extension View {
    func hiddenConditionally(isHidden: Bool) -> some View {
        isHidden ? AnyView(self.hidden()) : AnyView(self)
    }
}
