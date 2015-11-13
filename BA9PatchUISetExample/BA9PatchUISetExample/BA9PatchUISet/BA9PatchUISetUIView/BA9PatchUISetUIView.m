//
//  BA9PatchUISetUIView.m
//  BA9PatchUISetExample
//
//  Created by Baris Atamer on 11/13/15.
//  Copyright (c) 2015 ba. All rights reserved.
//

#import "BA9PatchUISetUIView.h"

@implementation BA9PatchUISetUIView

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    
    if (self) {
        [self _initialize];
    }
    
    return self;
}

-(id)initWithFrame:(CGRect)frame
{
    if(self = [super initWithFrame:frame])
    {
        [self _initialize];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    [self _initialize];
}

- (void) _initialize
{
    // Create image view
    self.imageView9Patch = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    
    // Create an 9 patch image
    self.image9Patch = [self.image9Patch resizableImageWithCapInsets: UIEdgeInsetsMake(self.top, self.left, self.bottom, self.right)];
    
    // Set the imageView's image
    self.imageView9Patch.image = self.image9Patch;
    
    // Add the created image view as subview.
    [self addSubview:self.imageView9Patch];
    self.imageView9Patch.layer.zPosition = -1000;
}

- (void)prepareForInterfaceBuilder{
    
    self.image9Patch = [self.image9Patch resizableImageWithCapInsets: UIEdgeInsetsMake(self.top, self.left, self.bottom, self.right)];
}

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    // Draw the 9patched image
    [self.image9Patch drawInRect:rect];
    
    // Draw image cap insets for debugging
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGRect myFrame = CGRectMake(self.left, self.top, self.frame.size.width - self.right * 2, self.frame.size.height - self.bottom * 2);
    CGContextSetLineWidth(context, 1);
    [[UIColor greenColor] set];
    UIRectFrame(myFrame);
    
}
@end
