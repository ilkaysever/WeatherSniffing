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
    
    static let shared = RequestManager()
    
    func fetchWeatherData(city: String, apiKey: String, response: @escaping(WeatherModel) -> Void, error: @escaping(ResponseError) -> Void) {
        
        let baseUrl = "http://api.openweathermap.org/data/2.5/forecast?q=\(city)&appid=\(apiKey)"
        //        AF.request(baseUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil, interceptor: nil).response { (responseData) in
        //            guard let data = responseData.data else { return }
        //            do {
        //                let weatherData = try JSONDecoder().decode(WeatherModel.self, from: data)
        //                print("******************\(weatherData)*********************")
        //            } catch {
        //                print("*****************Error Decoding***************** == \(error)*********************")
        //            }
        //
        //        }
        
        
//        let request = AF.request(baseUrl, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil)
//        request.validate()
//        request.responseData { (responseData) in
//            switch responseData.result {
//            case .success:
//                let waetherData = WeatherModel.decode(responseData.data!)
//                response(waetherData!)
//            case .failure:
//                break
//            }
//        }
    }
    
}

//extension Decodable {
//
//    static func decode(_ data: Data) -> Self? {
//        let decoder = JSONDecoder()
//        decoder.dataDecodingStrategy = .deferredToData
//        return try? decoder.decode(self, from: data)
//    }
//}
