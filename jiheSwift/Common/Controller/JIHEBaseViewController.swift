//
//  JIHEBaseViewController.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit

class JIHEBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func configWhiteNavBarAndTitleView(_ titleView: UIView?, _ title: NSString, _ leftView: UIView?, _ rightView: UIView?) {
        // 导航栏透明
        self.navigationController?.navigationBar.isTranslucent = false
        // 隐藏导航栏下面的线
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        if titleView != nil {
            self.navigationItem.titleView = titleView
        } else if title.length != 0 {
            self.navigationItem.title = title as String
        }
        if leftView != nil {
            let bgView = UIView(frame: leftView!.frame)
            bgView.addSubview(leftView!)
            let leftBarButtonItem = UIBarButtonItem(customView: bgView)
            self.navigationItem.leftBarButtonItem = leftBarButtonItem
        }
        if rightView != nil {
            let bgView = UIView(frame: rightView!.frame)
            bgView.addSubview(rightView!)
            let rightBarButtonItem = UIBarButtonItem(customView: bgView)
            self.navigationItem.rightBarButtonItem = rightBarButtonItem
        }
    }

}
