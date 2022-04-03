//
//  OneVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 03.04.2022.
//

import UIKit

class OneVC: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let cellManager = CellManager()
    
    var dudes: [Dude] {
        DataManager.shared.dudes
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "ShowMealDetail" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let mealDetailVC = segue.destination as! TwoButtonVC
        mealDetailVC.index = indexPath.row
    }

    @IBAction func unwindToMailTableVC(_ unwindSegue: UIStoryboardSegue) {
        tableView.reloadData()
    }
}

extension OneVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dudes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DudeCell", for: indexPath)
        let meal = dudes[indexPath.row]
        cellManager.configure(cell, wiht: meal)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 10
    }
}
