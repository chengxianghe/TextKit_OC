//
//  TableCell.m
//  TextKit_OC
//
//  Created by chengxianghe on 15/9/2.
//  Copyright (c) 2015年 CXH. All rights reserved.
//

#import "TableCell.h"
#import "Utility.h"

#define kWidth [UIScreen mainScreen].bounds.size.width //获取设备的物理宽度
#define kHeight [UIScreen mainScreen].bounds.size.height //获取设备的物理高度
#define kContentFont [UIFont systemFontOfSize:15.0]     //正文字体

@implementation TableCell

- (void)awakeFromNib {
    // Initialization code
}

+ (CGFloat)height:(TableModel *)model {
        
    if (!model.cellHeight) {
        
        model.cellHeight = model.attrStringHeight + 16;
    }
    
    return model.cellHeight;
}

- (void)setInfo:(TableModel *)model {
    
    self.textView.attributedText = model.attrString;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
