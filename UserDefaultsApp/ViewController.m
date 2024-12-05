//
//  ViewController.m
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 05.12.2024.
//

#import "ViewController.h"

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
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSString *str = [self.userDefaults stringForKey:@"strKey"];
    NSInteger number = [self.userDefaults integerForKey:@"intKey"];
    double dbl = [self.userDefaults doubleForKey:@"dblKey"];
    float flt = [self.userDefaults floatForKey:@"fltKey"];
    NSLog(@"String %@ Number %li Double %f Float %f", str, (long)number, dbl, flt);
    [self resetDefaults];
}

- (void)resetDefaults {
    NSDictionary *dict = [self.userDefaults dictionaryRepresentation];
    for (id key in dict) {
        [self.userDefaults removeObjectForKey:key];
    }
    [self.userDefaults synchronize];
}


@end
