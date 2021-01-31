//
//  ResponseError.swift
//  WeatherSniffing
//
//  Created by ilkay sever on 28.11.2020.
//  Copyright © 2020 ilkay sever. All rights reserved.
//

import Foundation

class ResponseError {
    var code: String?
    var message: String?
    
    init(code: String, message: String, title: String) {
        self.code = code
        self.message = message
    }
}
