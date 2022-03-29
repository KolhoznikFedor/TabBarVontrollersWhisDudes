//
//  Dude.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import UIKit

struct Dude {
    var name: String
    var price: Double
    var feedbacks: [Feedback] = []
    var image: UIImage?
}

struct Feedback {
    private let date = Date()
    let text: String
    let mark: Double
}
