
//
//  imagePlaceholder.swift
//  extensions
//
//  Created by Bishoy wadie on 3/28/20.
//  Copyright © 2020 Bishoy wadie. All rights reserved.
//

import Foundation
import UIKit

//Sometimes we want to display a one-tone placeholder for the UIImageView, but we need to provide a specific asset for this. What if we could create an image using a specific color?

extension UIImage {
    
    convenience init?(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) {
        let rect = CGRect(origin: .zero, size: size)
        UIGraphicsBeginImageContextWithOptions(rect.size, false, 0.0)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        guard let cgImage = image?.cgImage else { return nil }
        self.init(cgImage: cgImage)
    }
}
