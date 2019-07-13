//
//  JIHEBaseNavigationController.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit

class JIHEBaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.children.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: true)
    }
}
