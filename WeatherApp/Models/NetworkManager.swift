//
//  NetworkManager.swift
//  WeatherApp
//
//  Created by Andrey Kim on 08.08.2021.
//

import Foundation

struct NetworkWeatherManager {
    func fetchCurrentWeather(forCity city: String) {
        let urlString = "https://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=4498b43ea8fb6a3bf308d30f31c30a01"
        guard let url = URL(string: urlString) else { return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                let dataString = String(data: data, encoding: .utf8)
                print(data)
            }
        }
        task.resume()
    }
}
