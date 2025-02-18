//
//  ContentView.swift
//  WeatherApp
//
//  Created by Connor Ruesch on 2/17/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            // Background
            LinearGradient(colors: [Color.blue, Color.blue.opacity(0.5), Color.white], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            ScrollView {
                // Display Current Temperature information
                CurrentTempView(isHome: true, currentTemp: 44, city: "Chapel Hill", weatherDescription: "Sunny", highTemp: 56, lowTemp: 33)
                    .padding(60)
                
                // Display Hourly forecast
                HourlyForecastView()
                
                // Display weekly forecast
                WeeklyForecastView()
            }
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    ContentView()
}
