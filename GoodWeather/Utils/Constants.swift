//
//  Constants.swift
//  GoodWeather
//
//  Created by mustafa yildiz on 13.09.2022.
//

import Foundation

struct Constants{
    
    struct Urls{
        
        
        static func urlForWeatherByCity(city: String)->URL{
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?appid=21b674a6e65debae4a26bb63a9d0f9cb&units=metric&q=\(city.escaped())")!
            
        }
        
    }
}



extension String {
    
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
