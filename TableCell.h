//
//  TableCell.h
//  TextKit_OC
//
//  Created by chengxianghe on 15/9/2.
//  Copyright (c) 2015年 CXH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableModel.h"
@interface TableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)setInfo:(TableModel *)model;

+ (CGFloat)height:(TableModel *)model;

@end
