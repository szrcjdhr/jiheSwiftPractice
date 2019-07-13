//
//  Define.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit

let SafeAreaTopHeight: CGFloat =  (IPHONE_X() ? 88 : 64) // kH == 812.0
let SafeAreaBottomHeight: CGFloat =  (IPHONE_X() ? 34 : 0) // kH == 812.0
let kStatusHeight: CGFloat = 20
let kNavHeight: CGFloat = 44 // 导航控制器,TAB
let kTabBarHeight: CGFloat = (55+SafeAreaBottomHeight) // tabbar高度
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height
let kTabBarH: CGFloat = 44
let kMenuViewH: CGFloat = 200
let kScaleX: CGFloat = (SCREEN_WIDTH/375.0)

func IPHONE_X() -> Bool {
    guard #available(iOS 11.0, *) else {
        return false
    }
    return UIApplication.shared.windows[0].safeAreaInsets != UIEdgeInsets.zero
}
