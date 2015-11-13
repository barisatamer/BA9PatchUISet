//
//  BA9PatchUISetUIView.h
//  BA9PatchUISetExample
//
//  Created by Baris Atamer on 11/13/15.
//  Copyright (c) 2015 ba. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface BA9PatchUISetUIView : UIView

// Edge insets for 9patch frame background
@property IBInspectable CGFloat top;
@property IBInspectable CGFloat left;
@property IBInspectable CGFloat bottom;
@property IBInspectable CGFloat right;

@property (nonatomic, strong) IBInspectable UIImage *image9Patch;
@property (nonatomic, strong) UIImageView *imageView9Patch;

@end
