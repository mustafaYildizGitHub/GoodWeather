//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by mustafa yildiz on 12.09.2022.
//

import Foundation
import UIKit

protocol AddWeatherDelegate{
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    var delegate: AddWeatherDelegate?
    
    
    
    override func viewDidLoad() {

    }
    
    @IBAction func saveCityButtonPressed(_ sender: UIButton) {
        if let city = cityNameTextField.text {
            addWeatherVM.addWeather(for: city) { vm in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    
    
    @IBAction func closeButtonPressed(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}
