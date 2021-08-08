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
        return String(format: "%.0f", temperature)
    }
    let feelsLikeTemperature: Double
    var feelsLikeTemperatureString: String {
        return String(format: "%.0f", feelsLikeTemperature)
    }
    let conditionCode: Int
    var systemIconNameString: String {
        switch conditionCode {
        case 200...232:
            return "rain"
        case 300...321:
            return "rain"
        case 500...531:
            return "rain"
        case 600...622:
            return "winter"
        case 701...781:
            return "cumulus"
        case 800:
            return "sun"
        case 801...804:
            return "cloud"
        default:
            return "nosign"
        }
        
    }
    
    
    init?(currentWeatherData: currentWeatherData) {
        cityName = currentWeatherData.name
        temperature = currentWeatherData.main.temp
        feelsLikeTemperature = currentWeatherData.main.feels_like
        conditionCode = currentWeatherData.weather.first!.id
    }
}
