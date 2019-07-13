//
//  UIView+Extension.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit

extension UIView {
    func ViewController() -> UIViewController? {
        var next = self.next
        while next != nil {
            if next is UIViewController {
                return next as? UIViewController
            }
            next = next?.next
        }
        return nil
    }
}
