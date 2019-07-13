//
//  JIHEMainTabBarViewController.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit

class JIHEMainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.createView()
        
        
    }
    
    func createView() {
        
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor(219, 94, 94, 1)], for: UIControl.State.selected)
        UITabBarItem.appearance().setTitleTextAttributes([NSAttributedString.Key.foregroundColor : UIColor(128,128,128,1)], for: UIControl.State.normal)
        //tabBar选中按钮的颜色
        self.tabBar.tintColor = UIColor(219, 94, 94, 1)
        //tabBar未选中按钮的颜色
        self.tabBar.unselectedItemTintColor = UIColor(128,128,128,1)
        //tabBarn背景颜色
        self.tabBar.barTintColor = UIColor.white
        
        let carefullyChosenViewController = JIHECarefullyChosenViewController()
        carefullyChosenViewController.tabBarItem.title = "精选"
        carefullyChosenViewController.tabBarItem.image = UIImage(named: "精选")?.withRenderingMode(.alwaysOriginal)
        carefullyChosenViewController.tabBarItem.selectedImage = UIImage(named: "精选A")?.withRenderingMode(.alwaysOriginal)
        let navCarefullyChosenViewController = JIHEBaseNavigationController(rootViewController: carefullyChosenViewController)
        
        let JIHEMineViewController = JIHECarefullyChosenViewController()
        JIHEMineViewController.tabBarItem.title = "我的"
        JIHEMineViewController.tabBarItem.image = UIImage(named: "精选")?.withRenderingMode(.alwaysOriginal)
        JIHEMineViewController.tabBarItem.selectedImage = UIImage(named: "精选A")?.withRenderingMode(.alwaysOriginal)
        let nacJIHEMineViewController = JIHEBaseNavigationController(rootViewController: JIHEMineViewController)
        
        self.viewControllers = [navCarefullyChosenViewController, nacJIHEMineViewController]
    }
}
