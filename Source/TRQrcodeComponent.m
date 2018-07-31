//
//  TRQrcodeComponent.m
//  WeexEros
//
//  Created by torn on 2018/7/30.
//  Copyright © 2018年 benmu. All rights reserved.
//

#import "TRQrcodeComponent.h"
#import <WeexPluginLoader/WeexPluginLoader/WeexPluginLoader.h>
#import <CoreImage/CoreImage.h>
#import "HMScannerController.h"

WX_PlUGIN_EXPORT_COMPONENT(tr-qrcode, TRQrcodeComponent)

@interface TRQrcodeComponent ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation TRQrcodeComponent
- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance
{
    self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance];
    return self;
}
- (UIView *) loadView
{
    NSString *cardName = @"test";
    self.imageView = [UIImageView new];
    [HMScannerController cardImageWithCardName:cardName avatar:self.imageView.image scale:0.2 completion:^(UIImage *image) {
        self.imageView.image = image;
    }];
    return self.imageView;
}
@end
