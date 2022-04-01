//
//  TwoButtonVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

class TwoButtonVC: UIViewController, NVActivityIndicatorViewable {
    
    var dudeName: String?

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var dudeNameLavel: UILabel!
    @IBOutlet weak var dudePriceLabel: UILabel!
    @IBOutlet weak var dideRatingLabel: UILabel!

    @IBOutlet weak var buttonAllRiew: UIButton!

    var index: Int!
    
    var dude: Dude {
        DataManager.shared.dudes[1]
    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateUI(with: view.bounds.size)
        
        navigationItem.title = dudeName
//        imageView.image = UIImage(named: dudeName  ?? "")
        title = dude.name
        imageView.image = dude.image
        dudeNameLavel.text = dude.name
        dudePriceLabel.text = String(dude.price) + "$"
        dideRatingLabel.text = dude.ratingBar
        buttonPla()
        
        
    }
    func buttonPla() {
    let showRiew = "Посмотреть (\(dude.feedbacks.count) отзыв"
        buttonAllRiew.setTitle(showRiew, for: .normal)
        buttonAllRiew.isEnabled = dude.feedbacks.count != 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? LeaveFeedbackVC {
            dest.index(ofAccessibilityElement: (Any).self)
        }
        if let dest = segue.destination as? AllReviewsVC {
            dest.index(ofAccessibilityElement: (Any).self)
        }
    }
    

//startAnimating(type: .ballClipRotateMultiple)
//        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) { [weak self] in
//            self?.stopAnimating()
}
