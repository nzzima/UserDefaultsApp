//
//  ViewController.h
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 05.12.2024.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) NSUserDefaults *userDefaults;
- (void)resetDefaults;

@end

