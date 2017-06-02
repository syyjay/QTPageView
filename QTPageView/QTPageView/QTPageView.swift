//
//  QTPageView.swift
//  QTPageView
//
//  Created by yyxk on 2017/6/2.
//  Copyright © 2017年 yyxk. All rights reserved.
//

import UIKit

class QTPageView: UIView {

    fileprivate var titles:[String]
    fileprivate var childVc:[UIViewController]
    fileprivate var parentVc:UIViewController
    fileprivate var style:QTPageViewStyle
    fileprivate var titleView:QTTitleView!
    init(frame: CGRect,titles:[String],childVc:[UIViewController],parentVc:UIViewController,style:QTPageViewStyle) {
        self.titles=titles
        self.childVc=childVc
        self.parentVc=parentVc
        self.style=style
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension QTPageView{
    func setupUI() {
        setupTitlesView()
        setupContentView()
    }
    
    func setupTitlesView() {
        let  titleViewF = CGRect(x: 0, y: 0, width: bounds.width, height: 44)
        let titleView:QTTitleView! = QTTitleView(frame: titleViewF, titles: titles,style:style)
        self.titleView=titleView;
        titleView.backgroundColor=UIColor.red
        addSubview(titleView)
    }
    
    func setupContentView() {
      
    }
}
