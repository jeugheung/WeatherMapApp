//
//  CurrentWeatherData.swift
//  WeatherApp
//
//  Created by Andrey Kim on 08.08.2021.
//

import Foundation

struct currentWeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}
struct Main: Decodable {
    let temp: Double
    let feels_like: Double
}

struct Weather: Decodable {
    let id: Int
}
