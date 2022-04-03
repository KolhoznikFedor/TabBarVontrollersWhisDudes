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
    
    
    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "🔥", count: Int(rating.rounded(.up)))
        } else {
            return "The are no reviews"
        }
    }
    
    private var rating: Double? {
        if feedbacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for review in feedbacks {
                sum += review.mark
            }
            return sum / Double(feedbacks.count)
        }
    }
}

struct Feedback {
    private let date = Date()
    let text: String
    let mark: Double
    var ratingBar: String{
        String(repeating: "🔥", count: Int(mark.rounded(.up)))
    }
    var dataString: String {
        let dateFormated = DateFormatter()
        dateFormated.dateStyle = .medium
        dateFormated.timeStyle = .short
        dateFormated.locale = Locale(identifier: "ru_RU")
        return dateFormated.string(from: date)
    }
}
