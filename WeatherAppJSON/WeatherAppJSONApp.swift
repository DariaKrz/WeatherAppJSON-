//
//  WeatherAppJSONApp.swift
//  WeatherAppJSON
//
//  Created by Дарья Кукурудза on 13.01.2023.
//

import SwiftUI

@main
struct WeatherAppJSONApp: App {
    var body: some Scene {
        WindowGroup {
            let weatherService = WeatherService()
            let viewModel = WeatherViewModel(weatherService: weatherService)
            WeatherView(viewModel: viewModel)
        }
    }
}
