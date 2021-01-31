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
    var cod: String?
    var message: Int?
    var cnt: Int?
    var list: [List]?
    var city: City?
}

// MARK: - City
struct City: Codable {
    var id: Int?
    var name: String?
    var country: String?
    var population: Int?
    var timezone: Int?
    var sunrise: Int?
    var sunset: Int?
}

// MARK: - List
struct List: Codable {
    //var dt: Int?
    var main: MainClass?
    //var weather: [Weather]?
    var wind: Wind?
    //var pop: Double?
    //var dtTxt: String?
    
    enum CodingKeys: String, CodingKey {
        //case dt
        case main
        //case weather
        case wind
        //case pop
        //case dtTxt = "dt_txt"
    }
}

// MARK: - Wind
struct Wind: Codable {
    var speed: Double?
    var deg: Int?
}

// MARK: - MainClass
struct MainClass: Codable {
    var temp: Double?
    var feelsLike: Double?
    //var tempMin: Double?
    //var tempMax: Double?
    //var pressure: Int?
    //var seaLevel: Int?
    //var grndLevel: Int?
    //var humidity: Int?
    //var tempKf: Double?
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feelsLike = "feels_like"
        //case tempMin = "temp_min"
        //case tempMax = "temp_max"
        //case pressure
        //case seaLevel = "sea_level"
        //case grndLevel = "grnd_level"
        //case humidity
        //case tempKf = "temp_kf"
    }
}

// MARK: - Weather
struct Weather: Codable {
    var id: Int?
    var main: MainEnum?
    var weatherDescription: Description?
    var icon: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case main
        case weatherDescription = "description"
        case icon
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


