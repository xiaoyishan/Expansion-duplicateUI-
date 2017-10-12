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
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
}
@end

//按钮
@implementation UIButton (Duplicate)
- (UIButton*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIButton *NewBtn = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewBtn.layer.masksToBounds = self.layer.masksToBounds;
    NewBtn.layer.cornerRadius = self.layer.cornerRadius;
    NewBtn.layer.borderColor = self.layer.borderColor;
    NewBtn.layer.borderWidth = self.layer.borderWidth;
    NewBtn.clipsToBounds = self.clipsToBounds;
    return NewBtn;
}
@end

//标签
@implementation UILabel (Duplicate)
- (UIView*)duplicate{
    
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UILabel *NewLabel = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewLabel.layer.masksToBounds = self.layer.masksToBounds;
    NewLabel.layer.cornerRadius = self.layer.cornerRadius;
    NewLabel.layer.borderColor = self.layer.borderColor;
    NewLabel.layer.borderWidth = self.layer.borderWidth;
    NewLabel.clipsToBounds = self.clipsToBounds;
    return NewLabel;
}
@end

//图片
@implementation UIImageView (Duplicate)
- (UIImageView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIImageView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
}
@end

//输入框
@implementation UITextField (Duplicate)
- (UITextField*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UITextField *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
}
@end

//文本框
@implementation UITextView (Duplicate)
- (UITextView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UITextView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
    
}
@end

//滚动视图
@implementation UIScrollView (Duplicate)
- (UIScrollView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIScrollView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
    
}
@end

//表格
@implementation UITableView (Duplicate)
- (UITableView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UITableView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
    
}
@end

//集合
@implementation UICollectionView (Duplicate)
- (UICollectionView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UICollectionView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
    
}
@end

//网页
@implementation UIWebView (Duplicate)
- (UIWebView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    UIWebView *NewView = [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
    NewView.layer.masksToBounds = self.layer.masksToBounds;
    NewView.layer.cornerRadius = self.layer.cornerRadius;
    NewView.layer.borderColor = self.layer.borderColor;
    NewView.layer.borderWidth = self.layer.borderWidth;
    NewView.clipsToBounds = self.clipsToBounds;
    return NewView;
    
}
@end
