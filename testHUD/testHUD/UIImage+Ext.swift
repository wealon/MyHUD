//
//  UIImage+Ext.swift
//  testHUD
//
//  Created by wealon on 15/8/13.
//  Copyright (c) 2015年 com.8ni. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// 拉伸图片  新消息展示背景图片
    class func resizableImage(#imageName: String) -> UIImage {
        
        var image = UIImage(named: imageName)
        
        let top = CGFloat(image!.size.height * 0.5)
        let left = 0
        let bottom = CGFloat(image!.size.height * 0.5)
        let right = 0
        
        return image!.resizableImageWithCapInsets(UIEdgeInsetsMake(top, 0, bottom, 0), resizingMode: UIImageResizingMode.Stretch)
        
    }


}
