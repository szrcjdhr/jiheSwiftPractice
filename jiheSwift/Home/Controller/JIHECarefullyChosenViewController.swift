//
//  JIHECarefullyChosenViewController.swift
//  jiheSwift
//
//  Created by jihelife on 2019/7/11.
//  Copyright © 2019 szr. All rights reserved.
//

import UIKit


class JIHECarefullyChosenViewController: JIHEBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.prepareVav()
        
        
    }
    
    func prepareVav() {
        super.configWhiteNavBarAndTitleView(nil, "title", nil, nil)
    }
    
    func requestData() {
        
    }
    
}
