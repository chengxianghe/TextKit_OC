//
//  TableViewController.m
//  TextKit_OC
//
//  Created by chengxianghe on 15/9/2.
//  Copyright (c) 2015年 CXH. All rights reserved.
//

#import "TableViewController.h"
#import "TableCell.h"
#import "TableModel.h"
#import "Utility.h"


#define Cell_Id @"TableCell"

#define kWidth [UIScreen mainScreen].bounds.size.width //获取设备的物理宽度
#define kHeight [UIScreen mainScreen].bounds.size.height //获取设备的物理高度
#define kContentFont [UIFont systemFontOfSize:15.0]     //正文字体


@interface TableViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSMutableArray *dataSource;     // 

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self.tableView registerNib:[UINib nibWithNibName:Cell_Id bundle:nil] forCellReuseIdentifier:Cell_Id];
    
    self.dataSource = [NSMutableArray array];
    
    
    for (int i = 0; i < 20; i ++) {

        TableModel *model = [[TableModel alloc] init];

        model.text = [TT_STRING substringFromIndex:(random()%10 + 1) * 20 + 1];
       
        NSMutableAttributedString *content = [Utility emotionStrWithString:model.text];
        [content addAttribute:NSFontAttributeName value:kContentFont range:NSMakeRange(0, content.length)];
        CGSize maxSize = CGSizeMake(kWidth - 16, MAXFLOAT);
        CGSize attrStrSize = [content boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin context:nil].size;
        model.attrStringHeight = attrStrSize.height;
        
        model.attrString = content;
        
        [self.dataSource addObject:model];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSDate* tmpStartData = [NSDate date];

    TableCell *cell = [tableView dequeueReusableCellWithIdentifier:Cell_Id forIndexPath:indexPath];
    
    [cell setInfo:self.dataSource[indexPath.row]];
    
    double deltaTime = [[NSDate date] timeIntervalSinceDate:tmpStartData];
    NSLog(@">>>>>>>>>>cost time = %f ms", deltaTime*1000);
    

    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
 
    return [TableCell height:self.dataSource[indexPath.row]];
}

@end
