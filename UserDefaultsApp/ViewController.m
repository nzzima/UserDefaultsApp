//
//  ViewController.m
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 05.12.2024.
//

#import "ViewController.h"
#import "ColorTitle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.userDefaults = [NSUserDefaults standardUserDefaults];
//    [self.userDefaults setObject:@"myString" forKey:@"strKey"];
//    [self.userDefaults setInteger:100 forKey:@"intKey"];
//    [self.userDefaults setDouble:50.2 forKey:@"dblKey"];
//    [self.userDefaults setFloat:30.35 forKey:@"fltKey"];
    //UIColor * myColor = UIColor.redColor;
    //CGPoint myPoint = CGPointMake(10, 10);
    //ColorTitle * myTile = [[ColorTitle alloc] initWithTileOrigin:myPoint andColor:myColor];
    //NSData *myData = [NSKeyedArchiver archivedDataWithRootObject:myTile];
    //[self.userDefaults setObject:myData forKey:@"dataKey"];
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSString *str = [self.userDefaults stringForKey:@"strKey"];
    NSInteger number = [self.userDefaults integerForKey:@"intKey"];
    double dbl = [self.userDefaults doubleForKey:@"dblKey"];
    float flt = [self.userDefaults floatForKey:@"fltKey"];
    NSLog(@"String %@ Number %li Double %f Float %f", str, (long)number, dbl, flt);
    //[self resetDefaults];
    NSData *data = [self.userDefaults objectForKey:@"dataKey"];
    ColorTitle *resultData = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    NSLog(@"X: %f", resultData.tileOrigin.x);
    NSLog(@"Y: %f", resultData.tileOrigin.y);
}

- (void)resetDefaults {
    NSDictionary *dict = [self.userDefaults dictionaryRepresentation];
    for (id key in dict) {
        [self.userDefaults removeObjectForKey:key];
    }
    [self.userDefaults synchronize];
}


@end
