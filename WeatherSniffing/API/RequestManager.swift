//
//  Service.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 28.11.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class RequestManager {
    
    static func fetchWeatherData(city: String, apiKey: String, response: @escaping(WeatherModel) -> Void, error: @escaping(ResponseError) -> Void) {
        
        let baseUrl = "http://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)"
        AF.request(baseUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil).response { (responseData) in
            switch responseData.result {
            case .success:
                do {
                    let weatherData = try JSONDecoder().decode(WeatherModel.self, from: responseData.data!)
                    print("******************\(weatherData)*********************")
                } catch {
                    print("*****************Error Decoding***************** == \(error)*********************")
                }
            case .failure:
                print("**************Error*************")
            }
        }
    }
    
}
