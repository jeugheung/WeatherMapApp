//
//  CurrentWeather.swift
//  WeatherApp
//
//  Created by Andrey Kim on 08.08.2021.
//

import Foundation

struct CurrentWeather {
    let cityName: String
    let temperature: Double
    var temperatureString: String {
        return "\(temperature.rounded())"
    }
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
        return "\(feelsLikeTemperature.rounded())"
    }
    let conditionCode: Int
    
    init?(currentWeatherData: currentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feels_like
        conditionCode = currentWeatherData.weather.first!.id
    }
}
