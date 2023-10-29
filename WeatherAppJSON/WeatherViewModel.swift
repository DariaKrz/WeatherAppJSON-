//
//  WeatherViewModel.swift
//  WeatherAppJSON
//
//  Created by Дарья Кукурудза on 13.01.2023.
//

import Foundation

private let defaultIcon = "default"

private let iconMap = [
    "Drizzle" : "Drizzle",
    "Thunderstorm" : "Thunderstorm",
    "Rain" : "Rain",
    "Snow" : "Snow",
    "Clear" : "Clear",
    "Clouds" : "Clouds",
]

public class WeatherViewModel: ObservableObject {
    @Published var cityName: String = "City Name"
    @Published var temperature: String = "--"
    @Published var weatherDescription: String = "--"
    @Published var weatherIcon: String = defaultIcon
    
    public let weatherService: WeatherService
    
    public init(weatherService: WeatherService) {
        self.weatherService = weatherService
    }
    
    public func refresh() {
        weatherService.loadWeatherData { weather in
            DispatchQueue.main.async {
                self.cityName = weather.city
                self.temperature = "\(weather.temperature)C"
                self.weatherDescription = weather.description.capitalized
                self.weatherIcon = iconMap[weather.iconName] ?? defaultIcon
            }
        }
    }
}
