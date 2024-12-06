//
//  ColorTitle.m
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 06.12.2024.
//

#import "ColorTitle.h"

@implementation ColorTitle

- (nonnull instancetype)initWithTileOrigin:(CGPoint)point andColor:(nonnull UIColor *)color {
    self = [super init];
    if (self) {
        _tileColor = color;
        _tileOrigin = point;
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.tileColor forKey:@"color"];
    [coder encodeFloat:self.tileOrigin.x forKey:@"pointX"];
    [coder encodeFloat:self.tileOrigin.y forKey:@"pointY"];
}

- (nullable instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        self.tileColor = [coder decodeObjectForKey:@"color"];
        float x = [coder decodeFloatForKey:@"pointX"];
        float y = [coder decodeFloatForKey:@"pointY"];
        self.tileOrigin = CGPointMake(x, y);
    }
    return self;
}

@end
