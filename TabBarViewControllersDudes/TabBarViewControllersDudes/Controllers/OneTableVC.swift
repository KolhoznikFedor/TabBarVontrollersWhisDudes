//
//  OneTableVC.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 31.03.2022.
//

import UIKit

class OneTableVC: UITableViewController {

    @IBOutlet weak var tableVIew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableVIew.dataSource = self
        tableVIew.delegate = self

    
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataSorceDudes.imageList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableVIew.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let nameDudes = DataSorceDudes.imageList[indexPath.row]
        cell.textLabel?.text = nameDudes
        cell.imageView?.image = UIImage(named: nameDudes)
        
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableVIew.indexPathForSelectedRow,
           let destVC = segue.destination as? TwoButtonVC {
            destVC.dudeName = DataSorceDudes.imageList[indexPath.row]
        }
    }

  
}
