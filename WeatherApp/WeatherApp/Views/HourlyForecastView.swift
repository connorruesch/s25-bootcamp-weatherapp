//
//  HourlyForecastView.swift
//  WeatherApp
//
//  Created by Connor Ruesch on 2/17/25.
//

import SwiftUI

struct HourlyForecastView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "clock")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.5))
                
                Text("HOURLY FORECAST")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.5))
                
                Spacer()
            }
            .padding(10)
            
            Spacer()
            
            ScrollView(.horizontal) {
                HStack {
                    HourlyForecastItemView(temperature: 44, icon: "sun.max.fill", time: "Now")
                    HourlyForecastItemView(temperature: 48, icon: "sun.max.fill", time: "1PM")
                    HourlyForecastItemView(temperature: 50, icon: "cloud.rain.fill", time: "2PM")
                    HourlyForecastItemView(temperature: 53, icon: "cloud.rain.fill", time: "3PM")
                    HourlyForecastItemView(temperature: 56, icon: "cloud.rain.fill", time: "4PM")
                    HourlyForecastItemView(temperature: 52, icon: "cloud.snow.fill", time: "5PM")
                    HourlyForecastItemView(temperature: 49, icon: "cloud.snow.fill", time: "6PM")
                    HourlyForecastItemView(temperature: 45, icon: "cloud.snow.fill", time: "7PM")
                    HourlyForecastItemView(temperature: 40, icon: "moon.haze.fill", time: "8PM")
                    HourlyForecastItemView(temperature: 37, icon: "moon.haze.fill", time: "9PM")
                    HourlyForecastItemView(temperature: 35, icon: "moon.haze.fill", time: "10PM")
                    HourlyForecastItemView(temperature: 33, icon: "moon.haze.fill", time: "11PM")
                }
                .padding(.horizontal)
                .padding(.bottom)
            }
        }
        .frame(maxWidth: .infinity)
        .background(.blue.opacity(0.1))
        .shadow(radius: 10.0)
        .border(Color.gray.opacity(0.1), width: 0.5)
        .cornerRadius(10)
        .padding(.horizontal, 25)
    }
}
