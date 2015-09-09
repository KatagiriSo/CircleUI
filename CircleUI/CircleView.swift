//
//  CircleView.swift
//  CircleUI
//
//  Created by 片桐奏羽 on 2015/09/08.
//  Copyright (c) 2015年 SoKatagiri. All rights reserved.
//

import UIKit
import QuartzCore

class CircleView: UIView {
    
    var color: UIColor?
    
    // コードから初期化
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.color = self.backgroundColor
        self.backgroundColor = UIColor.clearColor()
    }
    
    // ストリーボードから呼ばれるイニシャライザ
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.color = self.backgroundColor!
        self.backgroundColor = UIColor.clearColor()
    }

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        let context = UIGraphicsGetCurrentContext()
        CGContextSetFillColorWithColor(context, self.color!.CGColor)
        CGContextFillEllipseInRect(context, CGRectMake(0, 0, self.frame.width, self.frame.height))
        
        
    }
    

}
