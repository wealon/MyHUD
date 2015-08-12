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
    
    let stateHUDHeight = 30
    
    let stateHUDWidth = 200
    
    let navBarHeight = 64
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tipBtn = UIButton.buttonWithType(UIButtonType.Custom) as? UIButton
        self.tipBtn!.backgroundColor = UIColor.grayColor()
        self.tipBtn!.setTitle("有3个新客户", forState: UIControlState.Normal)
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
        
        self.tipBtn?.snp_updateConstraints({ (make) -> Void in
            make.top.equalTo(self.view).offset(navBarHeight)
        })

        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.tipBtn?.layoutIfNeeded()
            
        })
    }
    
    
    
    // tip 点击的时候调用
    func tipClick(btn: UIButton) {
        
        self.tipBtn!.snp_updateConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(-stateHUDHeight)
        }
        
        UIView.animateWithDuration(duration, animations: { () -> Void in
            self.tipBtn?.layoutIfNeeded()
        })
        
    }

}

