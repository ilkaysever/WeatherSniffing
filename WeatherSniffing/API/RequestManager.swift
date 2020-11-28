//
//  Service.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 28.11.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import Foundation
import Alamofire

class RequestManager {
    
    fileprivate var baseUrl = "http://api.openweathermap.org/data/2.5/forecast?q=London&appid=f29dca0b8344ffbe396499a542c687d8"
    
    init(baseUrl: String) {
        self.baseUrl = baseUrl
    }
    
    func fetchWeather() {
        let request = AF.request(baseUrl)
            .validate()
        request.responseDecodable(of: WeatherModel.self) { (response) in
            guard let data = response.value else { return }
            print(data.city)
        }
    }
    
}
