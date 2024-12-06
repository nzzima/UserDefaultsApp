//
//  ColorTitle.h
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 06.12.2024.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ColorTitle : NSObject <NSCoding>

@property(nonatomic) CGPoint tileOrigin;
@property(nonatomic) UIColor* tileColor;
-(instancetype)initWithTileOrigin:(CGPoint) point andColor:(UIColor *) color;

@end

NS_ASSUME_NONNULL_END
