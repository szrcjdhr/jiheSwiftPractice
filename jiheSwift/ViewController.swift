//
//  ViewController.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView(frame: CGRect(x: (SCREEN_WIDTH-200)/2,y: 200,width: 200,height: 200))
        self.view.addSubview(view)
        view.backgroundColor = UIColor.cyan
        
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.jumpButtonClick()
        }
    }

    func jumpButtonClick() {
        print("jumpButtonClick")
        let mainTabVC = JIHEMainTabBarViewController()
        UIApplication.shared.keyWindow?.rootViewController = mainTabVC
    }
}

