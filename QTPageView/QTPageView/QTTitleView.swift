//
//  QTTitleView.swift
//  QTPageView
//
//  Created by yyxk on 2017/6/2.
//  Copyright © 2017年 yyxk. All rights reserved.
//

import UIKit

class QTTitleView: UIView {
    fileprivate var titles:[String]
    fileprivate var style:QTPageViewStyle
    init(frame: CGRect,titles:[String],style:QTPageViewStyle) {
        self.titles=titles;
        self.style=style;
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension QTTitleView{
    func setupUI() {
        self.frame=frame;
    }
}
