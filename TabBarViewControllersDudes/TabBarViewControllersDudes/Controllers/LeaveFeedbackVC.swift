//
//  LeaveFeedbackVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import UIKit

class LeaveFeedbackVC: UIViewController {
    @IBOutlet weak var feedBackTextView: UITextView!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var segmentView: UISegmentedControl!
    @IBOutlet weak var buttonView: UIButton!
    
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        feedBackTextView.delegate = self
    }
    
    @IBAction func goBackFeed() {
        let feedback1 = Feedback(text: feedBackTextView.text, mark: Double(segmentView.selectedSegmentIndex + 1))
        DataManager.shared.dudes[index].feedbacks.append(feedback1)
    }
}

extension LeaveFeedbackVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == feedBackTextView {
            let isCountEnough = textView.text.count > 2
            buttonView.isEnabled = isCountEnough
            errorLabel.isHidden = isCountEnough
        }
        return true
    }
}
