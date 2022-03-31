//
//  TwoButtonVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import UIKit

class TwoButtonVC: UIViewController {
    
    var dudeName: String?

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = dudeName
        imageView.image = UIImage(named: dudeName  ?? "")

        
    }
    


}
