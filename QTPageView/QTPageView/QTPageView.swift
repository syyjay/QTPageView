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
    fileprivate var childVcs:[UIViewController]
    fileprivate var parentVc:UIViewController
    fileprivate var style:QTPageViewStyle
    fileprivate var titleView:QTTitleView!
    fileprivate var contentView:QTContentView!
    
    init(frame: CGRect,titles:[String],childVcs:[UIViewController],parentVc:UIViewController,style:QTPageViewStyle) {
        self.titles=titles
        self.childVcs=childVcs
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
        self.titleView = QTTitleView(frame: titleViewF, titles: titles,style:style)
        titleView.backgroundColor=UIColor.red
        addSubview(titleView)
    }
    
    func setupContentView() {
        let  contentViewF = CGRect(x: 0, y: titleView.frame.maxY, width: bounds.width, height: bounds.height-titleView.frame.maxY)
        self.contentView=QTContentView(frame:contentViewF,childVcs:childVcs,parentVc:parentVc)
        addSubview(contentView)
    }
}
