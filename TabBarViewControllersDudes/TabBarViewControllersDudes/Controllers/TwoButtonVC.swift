//
//  TwoButtonVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import UIKit
//import NVActivityIndicatorView
//import NVActivityIndicatorViewExtended

class TwoButtonVC: UIViewController {
    
//    var dudeName: String?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dudeNameLavel: UILabel!
    @IBOutlet weak var dudePriceLabel: UILabel!
    @IBOutlet weak var dideRatingLabel: UILabel!

    @IBOutlet weak var buttonAllRiew: UIButton!

    
    
    var index: Int!

    var meal: Dude {
        DataManager.shared.dudes[index]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? LeaveFeedbackVC {
            dest.index = index
        }
        if let dest = segue.destination as? AllReviewsVC {
            dest.index = index
        }
    }
    
    func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
//        mealStackView.axis = isVertical ? .vertical : .horizontal

        title = meal.name
        imageView.image = meal.image
        dudeNameLavel.text = meal.name
        dudePriceLabel.text = String(meal.price) + " BYN"

        dideRatingLabel.text = meal.ratingBar

        let showReviewsBtnTitle = "Просмотреть (\(meal.feedbacks.count)) отзывов"
        buttonAllRiew.setTitle(showReviewsBtnTitle, for: .normal)
        buttonAllRiew.isEnabled = meal.feedbacks.count != 0
    }
}
