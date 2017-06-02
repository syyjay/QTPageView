//
//  QTContentView.swift
//  QTPageView
//
//  Created by yyxk on 2017/6/2.
//  Copyright © 2017年 yyxk. All rights reserved.
//

import UIKit

class QTContentView: UIView {
    fileprivate var childVcs:[UIViewController]
    fileprivate var parentVc:UIViewController
    
    init(frame: CGRect,childVcs:[UIViewController],parentVc:UIViewController) {
        self.childVcs=childVcs
        self.parentVc=parentVc;
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension QTContentView{
    func setupUI() {
        self.frame=frame;
        for i in  0...childVcs.count-1 {
            let childVc:UIViewController! = childVcs[i]
            childVc.view.frame=bounds
            parentVc.addChildViewController(childVc)
            addSubview(childVc.view)
            if(i==0 ){
                childVc.view.backgroundColor=UIColor.gray;
            }else{
                childVc.view.backgroundColor=UIColor.green;
            }
        }
    }
}
