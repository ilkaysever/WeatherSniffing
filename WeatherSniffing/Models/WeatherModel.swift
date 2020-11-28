//
//  WeatherModel.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 28.11.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import Foundation

// MARK: - WeatherModel
struct WeatherModel: Codable {
    var cod: String!
    var message: Int!
    var cnt: Int!
    var city: CityElements!
    var list: [ListElements]!
}

// MARK: - City
struct CityElements: Codable {
    let id: Int
    let name: String
    let country: String
    let population: Int!
    var timezone: Int!
    var sunrise: Int!
    var sunset: Int!
    let coord: CoordElements!
}

// MARK: - Coord
struct CoordElements: Codable {
    var lat: Double!
    var lon: Double!
}

// MARK: - List
struct ListElements: Codable {
    var dt: Int!
    var dtTxt: String!
    var main: MainClass!
    var weather: [Weather]!
    
    enum CodingKeys: String, CodingKey {
        case dt
        case main
        case weather
        case dtTxt = "dt_txt"
    }
}

// MARK: - MainClass
struct MainClass: Codable {
    var temp: Double!
    var feelsLike: Double!
    var tempMin: Double!
    var tempMax: Double!
    var pressure: Int!
    var humidity: Int!
    var tempKf: Double!
    
    enum CodingKeys: String, CodingKey {
        case temp
        case pressure
        case humidity
        case feelsLike = "feels_like"
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case tempKf = "temp_kf"
    }
}

// MARK: - Weather
struct Weather: Codable {
    var id: Int!
    var icon: String!
    var main: MainEnum!
    var weatherDescription: Description!
    
    enum CodingKeys: String, CodingKey {
        case id
        case icon
        case main
        case weatherDescription = "description"
    }
}

enum MainEnum: String, Codable {
    case clear = "Clear"
    case clouds = "Clouds"
    case rain = "Rain"
}

enum Description: String, Codable {
    case brokenClouds = "broken clouds"
    case clearSky = "clear sky"
    case fewClouds = "few clouds"
    case lightRain = "light rain"
    case overcastClouds = "overcast clouds"
    case scatteredClouds = "scattered clouds"
}
