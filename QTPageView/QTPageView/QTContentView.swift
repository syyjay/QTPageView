//
//  QTContentView.swift
//  QTPageView
//
//  Created by yyxk on 2017/6/2.
//  Copyright © 2017年 yyxk. All rights reserved.
//

import UIKit

class QTContentView: UIView {
    fileprivate var childVc:[UIViewController]
    fileprivate var parentVc:UIViewController
    
    init(frame: CGRect,childVc:[UIViewController],parentVc:UIViewController) {
        self.childVc=childVc
        self.parentVc=parentVc;
        super .init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension QTContentView{
    func setupUI() {
        self.frame=frame;
    }
}
