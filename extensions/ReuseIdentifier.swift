
//
//  ReuseIdentifier.swift
//  extensions
//
//  Created by Bishoy wadie on 3/28/20.
//  Copyright © 2020 Bishoy wadie. All rights reserved.
//

import Foundation
import UIKit

//Now we are able to access a reuseIdentifier directly from the UITableViewCell or UICollectionViewCell subclass

protocol ReuseIdentifiable {
    static func reuseIdentifier() -> String
}

extension ReuseIdentifiable {
    static func reuseIdentifier() -> String {
        return String(describing: self)
    }
}

extension UITableViewCell: ReuseIdentifiable {}
extension UICollectionViewCell: ReuseIdentifiable {}
