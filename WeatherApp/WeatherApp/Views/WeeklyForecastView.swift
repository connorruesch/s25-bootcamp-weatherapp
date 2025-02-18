//
//  WeeklyForecastView.swift
//  WeatherApp
//
//  Created by Connor Ruesch on 2/17/25.
//

import SwiftUI

struct WeeklyForecastView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "calendar")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.5))
                
                Text("10-DAY FORECAST")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundStyle(.white.opacity(0.5))
                
                Spacer()
            }
            .padding(10)
            
            Spacer()
            
            WeeklyForecastRowView(day: "Today", icon: "cloud.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Tue", icon: "sun.max.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Wed", icon: "sun.max.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Thu", icon: "sun.max.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Fri", icon: "cloud.rain.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Sat", icon: "cloud.rain.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Sun", icon: "snowflake", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Mon", icon: "snowflake", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Tue", icon: "sun.max.fill", loTemp: 31, hiTemp: 45)
            WeeklyForecastRowView(day: "Wed", icon: "sun.max.fill", loTemp: 31, hiTemp: 45)
        }
        .frame(maxWidth: .infinity)
        .background(.blue.opacity(0.1))
        .border(Color.gray.opacity(0.1), width: 0.5)
        .cornerRadius(10)
        .shadow(radius: 10.0)
        .padding(.horizontal, 25)
    }
}
