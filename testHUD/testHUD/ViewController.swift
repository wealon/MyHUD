//
//  ViewController.swift
//  testHUD
//
//  Created by wealon on 15/8/12.
//  Copyright (c) 2015年 com.8ni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tipBtn: UIButton?
    
    let duration: NSTimeInterval = Double(0.5)
    
    let stateHUDHeight = 40
    
    let stateHUDWidth = 120
    
    let navBarHeight = 64
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tipBtn = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.tipBtn!.adjustsImageWhenHighlighted = false
        self.tipBtn!.setTitle("有0个新客户", forState: UIControlState.Normal)
        let normalImage = UIImage.resizableImage(imageName: "newmessage")
        self.tipBtn!.setBackgroundImage(normalImage, forState: UIControlState.Normal)
        self.tipBtn!.titleEdgeInsets = UIEdgeInsetsMake(11, 0, 0, 0)
        self.tipBtn!.titleLabel?.font = UIFont.systemFontOfSize(12)
        self.tipBtn!.addTarget(self, action: "tipClick:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.tipBtn!)
        
        self.tipBtn!.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(-stateHUDHeight)
            make.width.equalTo(stateHUDWidth)
            make.height.equalTo(stateHUDHeight)
            make.centerX.equalTo(self.view.snp_centerX)
        }
        
    }


    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        // 1. 设置HUD 内容
        self.tipBtn!.setTitle("有8个新客户", forState: UIControlState.Normal)

        // 2. 设置HUD 约束
        self.tipBtn?.snp_updateConstraints({ (make) -> Void in
            make.top.equalTo(self.view).offset(navBarHeight)
        })

        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.tipBtn?.layoutIfNeeded()
        })
    }
    
    
    
    // tip 点击的时候调用
    func tipClick(btn: UIButton) {
        // 1. 更新HUD 约束
        self.tipBtn!.snp_updateConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(-stateHUDHeight)
        }
        
        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.tipBtn?.layoutIfNeeded()
        })
        
        // 2. 调用相应的方法
        loadNewPerson()
        
    }
    
    // 加载更多的客户
    func loadNewPerson() {
        println("点击了HUD,正在加载更多的客户")
    }

}

