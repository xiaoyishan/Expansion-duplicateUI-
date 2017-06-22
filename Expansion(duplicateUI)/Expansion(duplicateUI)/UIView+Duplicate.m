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
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];
}
@end

//按钮
@implementation UIButton (Duplicate)
- (UIButton*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//标签
@implementation UILabel (Duplicate)
- (UIView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//图片
@implementation UIImageView (Duplicate)
- (UIImageView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//输入框
@implementation UITextField (Duplicate)
- (UITextField*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//文本框
@implementation UITextView (Duplicate)
- (UITextView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//滚动视图
@implementation UIScrollView (Duplicate)
- (UIScrollView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//表格
@implementation UITableView (Duplicate)
- (UITableView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//集合
@implementation UICollectionView (Duplicate)
- (UICollectionView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end

//网页
@implementation UIWebView (Duplicate)
- (UIWebView*)duplicate{
    NSData * tempArchive = [NSKeyedArchiver archivedDataWithRootObject:self];
    return [NSKeyedUnarchiver unarchiveObjectWithData:tempArchive];}
@end
