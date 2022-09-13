//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by mustafa yildiz on 13.09.2022.
//

import Foundation

struct WeatherResponse: Codable {
    let name: String
    let main: Weather
}

struct Weather: Codable {
    let temp: Double
    let humidity: Double
}
