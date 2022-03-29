//
//  DataManager.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import Foundation
import UIKit

class DataManager {
    static let shared = DataManager()
    private init() {
        dudes = [Dude(name: "Eric", price: 99.0,image: #imageLiteral(resourceName: "Eric.jpg")),
                 Dude(name: "Kyle", price: 3.0,image: #imageLiteral(resourceName: "Kyle.jpg")),
                 Dude(name: "Stan", price: 5.0,image: #imageLiteral(resourceName: "Stan.jpg")),
                 Dude(name: "Kenny", price: 9999.0,image: #imageLiteral(resourceName: "Kenny.jpg"))]
    }
    var dudes: [Dude]
}
