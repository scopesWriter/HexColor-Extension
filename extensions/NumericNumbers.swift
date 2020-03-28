
//
//  NumericNumbers.swift
//  extensions
//
//  Created by Bishoy wadie on 3/28/20.
//  Copyright © 2020 Bishoy wadie. All rights reserved.
//

import Foundation
import UIKit

//We sometimes need to display prices in our apps. But a value with no spaces (e.g., 235000) doesn’t look very nice, so we may want to insert a separator inside the number. This short extension allows us to do it very easily

extension Numeric {
    var formattedWithSeparator: String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        return formatter.string(for: self) ?? String(describing: self)
    }
}
