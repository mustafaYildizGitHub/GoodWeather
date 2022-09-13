//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by mustafa yildiz on 12.09.2022.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func configure(_ vm: WeatherViewModel){
        self.cityNameLabel.text = vm.city
        self.temperatureLabel.text = "\(vm.temperature.formatAsDegree())°"
    }
}

extension Double {
    
    func formatAsDegree() -> String {
        return String(format: "%.0f", self)
    }
}
