
//
//  SearchBarTextField.swift
//  extensions
//
//  Created by Bishoy wadie on 3/28/20.
//  Copyright © 2020 Bishoy wadie. All rights reserved.
//

//Now we can access the text field without worrying about the specific iOS version because everything is done behind the scenes

import Foundation
import UIKit

extension UISearchBar {

    var textField : UITextField? {
        if #available(iOS 13.0, *) {
            return self.searchTextField
        } else {
            // Fallback on earlier versions
            for view: UIView in (self.subviews[0]).subviews {
                if let textField = view as? UITextField {
                    return textField
                }
            }
        }
        return nil
    }
}
