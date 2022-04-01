//
//  Configurates.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 01.04.2022.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, wiht dudes: Dude) {
        cell.detailTextLabel?.text = "\(String(dudes.price)) USD \(dudes.ratingBar)"
        
//        cell.detailTextLabel?.text = "\(String(dudes.price)) USD\n \(dudes.ratingBar)"

        cell.textLabel?.text = dudes.name
        cell.imageView?.image = dudes.image
    }
}

//cell.detailTextLabel?.text = "\n \(String(dudes.price)) USD \n \(dudes.ratingBar)"
