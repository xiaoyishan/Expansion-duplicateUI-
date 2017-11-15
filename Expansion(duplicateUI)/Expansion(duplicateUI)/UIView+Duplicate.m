//
//  UIView+Duplicate.m
//  YunBu
//
//  Created by Sundear on 2017/6/22.
//  Copyright © 2017年 谢鑫. All rights reserved.
//

#import "UIView+Duplicate.h"



@implementation UIView (Duplicate)

- (UIView*)duplicate
{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
}

@end






//按钮
@implementation UIButton (Duplicate)

- (UIButton*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIButton *NewBtn = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    // 修复归档在可视化环境下不能识别UIButtonLabel->font属性 同时激活递归无法遍历出子层级button的titleLabel对象
    NewBtn.titleLabel.font = self.titleLabel.font;
    [UIButton Ext_CopyAllLayer:NewBtn SelfView:self]; // 拷贝layer
    return NewBtn;
}




#pragma mark -- layer 实现 --
// 拷贝layer
+(void)Ext_CopyAllLayer:(UIView*)NewView SelfView:(UIView*)OldView{
    NewView.layer.masksToBounds = OldView.layer.masksToBounds;
    NewView.layer.cornerRadius = OldView.layer.cornerRadius;
    NewView.layer.borderColor = OldView.layer.borderColor;
    NewView.layer.borderWidth = OldView.layer.borderWidth;
    NewView.clipsToBounds = OldView.clipsToBounds;
    
    
    NSMutableArray *NewArr=[NSMutableArray new];
    NSMutableArray *OldArr=[NSMutableArray new];
    [self SubLayerNew:NewView addArray:NewArr];
    [self SubLayerNew:OldView addArray:OldArr];
    
    NSLog(@"递归的结果:%zd  旧对象:%zd",NewArr.count, OldArr.count);
    
    for (int k=0; k<NewArr.count; k++) {
        UIView *NewItem = NewArr[k];
        UIView *OldItem = OldArr[k];
        
        NewItem.layer.masksToBounds = OldItem.layer.masksToBounds;
        NewItem.layer.cornerRadius = OldItem.layer.cornerRadius;
        NewItem.layer.borderColor = OldItem.layer.borderColor;
        NewItem.layer.borderWidth = OldItem.layer.borderWidth;
        NewItem.clipsToBounds = OldItem.clipsToBounds;
        
    }
}

// 递归实现复制全部层级对象
+(void)SubLayerNew:(UIView*)NewView addArray:(NSMutableArray*)Arr{
    
    if(!Arr)Arr=[NSMutableArray new];
    
    for (UIView *View in NewView.subviews) {
        [Arr addObject:View];
        [self SubLayerNew:View addArray:Arr];
        NSLog(@"--xx--:%@",View.class);
    }
}

@end









//标签
@implementation UILabel (Duplicate)
- (UIView*)duplicate{
    
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UILabel *NewLabel = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewLabel SelfView:self]; // 拷贝layer
    return NewLabel;
}
@end

//图片
@implementation UIImageView (Duplicate)
- (UIImageView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIImageView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
}
@end

//输入框
@implementation UITextField (Duplicate)
- (UITextField*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UITextField *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
}
@end

//文本框
@implementation UITextView (Duplicate)
- (UITextView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UITextView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
    
}
@end

//滚动视图
@implementation UIScrollView (Duplicate)
- (UIScrollView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIScrollView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
    
}
@end

//表格
@implementation UITableView (Duplicate)
- (UITableView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UITableView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
    
}
@end

//集合
@implementation UICollectionView (Duplicate)
- (UICollectionView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UICollectionView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
    
}
@end

//网页
@implementation UIWebView (Duplicate)
- (UIWebView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIWebView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    [UIButton Ext_CopyAllLayer:NewView SelfView:self]; // 拷贝layer
    return NewView;
    
}
@end
