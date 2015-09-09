//
//  SwiftTest.swift
//  TextKit_OC
//
//  Created by chengxianghe on 15/9/9.
//  Copyright (c) 2015年 CXH. All rights reserved.
//

import UIKit

class SwiftTest: NSObject {
   
    func testFunc() {
        println("在OC中调用了Swift")
    }
    
    override init() {
        super.init()
        
        OCTest.TestFunc()
        
    }
    
}
