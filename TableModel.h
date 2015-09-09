//
//  TableModel.h
//  TextKit_OC
//
//  Created by chengxianghe on 15/9/2.
//  Copyright (c) 2015年 CXH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableModel : NSObject

@property (nonatomic, copy) NSMutableAttributedString *attrString;     // <#注释#>
@property (nonatomic, assign)   CGFloat             attrStringHeight;
@property (nonatomic, assign)   CGFloat             cellHeight;
@property (nonatomic, copy) NSString *text;
@end
