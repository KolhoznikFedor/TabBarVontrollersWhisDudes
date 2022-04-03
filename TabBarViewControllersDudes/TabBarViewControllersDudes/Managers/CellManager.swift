//
//  Configurates.swift
//  TabBarViewControllersDudes
//
//  Created by admin on 01.04.2022.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, wiht dude: Dude) {
        cell.detailTextLabel?.text = String(dude.price) + "USD\n" + dude.ratingBar
        cell.textLabel?.text = dude.name
        cell.imageView?.image = dude.image
    }
}
