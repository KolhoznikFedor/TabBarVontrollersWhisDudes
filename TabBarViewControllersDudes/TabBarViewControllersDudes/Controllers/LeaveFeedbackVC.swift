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
        let feedBack = Feedback(text: feedBackTextView.text,
                                mark: Double(segmentView.selectedSegmentIndex + 1))
        DataManager.shared.dudes[1].feedbacks.append(feedBack)
    }
    
}

extension LeaveFeedbackVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == feedBackTextView {
            let isCount = textView.text.count > 10
            buttonView.isEnabled = isCount
            errorLabel.isHidden = isCount
        }
        return true
    }
}
