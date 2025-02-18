//
//  CurrentTempView.swift
//  WeatherApp
//
//  Created by Connor Ruesch on 2/17/25.
//

import SwiftUI

struct CurrentTempView: View {
    let isHome: Bool
    let currentTemp: Int
    let city: String
    let weatherDescription: String
    let highTemp: Int
    let lowTemp: Int
    
    var body: some View {
        VStack {
            if isHome {
                HStack {
                    Image(systemName: "location.fill")
                        .font(.caption)
                        .foregroundStyle(.white)
                    
                    Text("HOME")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            }
            
            Text(city)
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundStyle(.white)
            
            Text("\(currentTemp)°")
                .font(.system(size: 100))
                .fontWeight(.thin)
                .foregroundStyle(.white)
            
            
            VStack {
                Text(weatherDescription)
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white.opacity(0.6))
                
                HStack {
                    Text("H: \(highTemp)°")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    
                    Text("L: \(lowTemp)°")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}
