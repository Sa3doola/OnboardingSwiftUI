//
//  OboardingModel.swift
//  OboardingSwiftUI
//
//  Created by Saad Sherif on 18/03/2023.
//

import Foundation


struct OnboardingData: Hashable, Identifiable {
    
    let id: Int
    let objectImage: String
    let primaryText: String
    let secondaryText: String
    var shoulHide: Bool
    
    static let list: [OnboardingData] = [
        OnboardingData(id: 0, objectImage: "onboarding1", primaryText: "Get healthy and live peacfully", secondaryText: "Living a happier, more satisfied life is within reach.", shoulHide: true),
        OnboardingData(id: 1, objectImage: "onboarding2", primaryText: "Predict weather", secondaryText: "Predict weather trends and conditions with current solar activity.", shoulHide: true),
        OnboardingData(id: 2, objectImage: "onboarding3", primaryText: "Get air quality information", secondaryText: "Immediate, accurate air quality data to help you create healthier.", shoulHide: true),
        OnboardingData(id: 3, objectImage: "onboarding4", primaryText: "Get air quality information", secondaryText: "Immediate, accurate air quality data to help you create healthier.", shoulHide: false)
    ]
}
