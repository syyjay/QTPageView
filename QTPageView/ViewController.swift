//
//  ViewController.swift
//  QTPageView
//
//  Created by yyxk on 2017/6/2.
//  Copyright © 2017年 yyxk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension ViewController{
    func  setupUI()  {
        let childVcs:[UIViewController]=[UIViewController.init(),UIViewController.init()]
        let titles:[String] = ["热门","附近"]
        let style:QTPageViewStyle = QTPageViewStyle()
        let pageView:QTPageView! = QTPageView(frame: self.view.bounds, titles:titles , childVcs: childVcs, parentVc: self, style: style)
        self.view.addSubview(pageView)
    }
}

