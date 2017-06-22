//
//  UIView+Duplicate.h
//  YunBu
//
//  Created by Sundear on 2017/6/22.
//  Copyright © 2017年 谢鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Duplicate)
-(UIView*)duplicate;
@end


//子类 防止警告也加上
//按钮
@interface UIButton (Duplicate)
-(UIButton*)duplicate;
@end

//标签
@interface UILabel (Duplicate)
-(UILabel*)duplicate;
@end

//图片
@interface UIImageView (Duplicate)
-(UIImageView*)duplicate;
@end

//输入框
@interface UITextField (Duplicate)
-(UITextField*)duplicate;
@end

//文本框
@interface UITextView (Duplicate)
-(UITextView*)duplicate;
@end

//滚动视图
@interface UIScrollView (Duplicate)
-(UIScrollView*)duplicate;
@end

//表格
@interface UITableView (Duplicate)
-(UITableView*)duplicate;
@end

//集合
@interface UICollectionView (Duplicate)
-(UICollectionView*)duplicate;
@end

//网页
@interface UIWebView (Duplicate)
-(UIWebView*)duplicate;
@end
