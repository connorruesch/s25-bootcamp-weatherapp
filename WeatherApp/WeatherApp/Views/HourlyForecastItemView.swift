//
//  HourlyForecastItemView.swift
//  WeatherApp
//
//  Created by Connor Ruesch on 2/17/25.
//

import SwiftUI

struct HourlyForecastItemView: View {
    let temperature: Int
    let icon: String
    let time: String
    
    var body: some View {
        VStack {
            Text(time)
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Image(systemName: icon)
                .symbolRenderingMode(.multicolor)
                .padding(2)
            
            Text("\(temperature)°")
                .font(.title3)
                .fontWeight(.medium)
                .foregroundStyle(.white)
        }
        .padding(0.3)
    }
}
