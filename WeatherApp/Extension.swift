//
//  Extension.swift
//  WeatherApp
//
//  Created by Andrey Kim on 06.08.2021.
//

import Foundation
import UIKit

extension ViewController {
    func presentSearchAlertController(withTitle title: String?,
                                      message: String?,
                                      style: UIAlertController.Style) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: style)
        ac.addTextField { tf in
            let cities = ["Almaty", "Moscow", "Seoul", "New York"]
            tf.placeholder = cities.randomElement()
        }
        let search = UIAlertAction(title: "Search", style: .default) { action in
            let textField = ac.textFields?.first
            guard let cityName = textField?.text else { return }
            if cityName != "" {
                print("search for the \(cityName)")
            }
        }
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        ac.addAction(search)
        ac.addAction(cancel)
        present(ac, animated: true, completion: nil)
    }
}
