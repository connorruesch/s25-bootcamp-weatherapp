//
//  WeeklyForecastRowView.swift
//  WeatherApp
//
//  Created by Connor Ruesch on 2/17/25.
//

import SwiftUI

struct WeeklyForecastRowView: View {
    let day: String
    let icon: String
    let loTemp: Int
    let hiTemp: Int
    
    var body: some View {
        VStack {
            Divider()
                .padding(.bottom, 5)

            HStack {
                
                HStack {
                    Text(day)
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
                .frame(maxWidth: 70)
                
                Spacer()
                
                Image(systemName: icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.title3)
                    .foregroundStyle(.white)
                
                Spacer()
                
                Text("\(loTemp)°")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white.opacity(0.5))
                
                ZStack {
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.gray.opacity(0.2))
                        .frame(maxWidth: 100, maxHeight: 5)
                    
                    RoundedRectangle(cornerRadius: 100)
                        .fill(Color.blue.opacity(0.3))
                        .frame(maxWidth: 50, maxHeight: 5)
                }
                
                Text("\(hiTemp)°")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.white)
            }
        }
        .padding(.horizontal, 10)
        .padding(.bottom, 10)
    }
}
