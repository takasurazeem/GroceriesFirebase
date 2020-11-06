//
//  UITextField+HideWithDuration.swift
//  GroceriesFirebase
//
//  Created by Takasur Azeem on 06/11/2020.
//

import Foundation
import UIKit

extension UITextField {
    
    func toggleVisibilityWith(duration: TimeInterval, hide: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.isHidden = hide
        }
    }
    
}
