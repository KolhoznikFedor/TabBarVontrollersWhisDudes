//
//  AllReviewsVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 29.03.2022.
//

import UIKit

class AllReviewsVC: UITableViewController {
    
    var index: Int!

    var dude: Dude {
        DataManager.shared.dudes[index]
    }

    override func viewDidLoad() {
        tableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dude.feedbacks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let feedback = dude.feedbacks[indexPath.row]
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ReviewTableViewCell
//        cell.dateLabel.text = feedback.dateString
//        cell.rewievLabel.text = feedback.text
//        cell.markLabel.text = feedback.ratingBar

        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as! TableViewCell
        
        cell.nameLb1.text = feedback.dataString
        cell.textLb1.text = feedback.dataString
        cell.ratingLb1.text = feedback.ratingBar
        return cell
    }
}
