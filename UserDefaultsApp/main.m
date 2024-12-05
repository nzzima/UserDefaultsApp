//
//  main.m
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 05.12.2024.
//

/*
 Создать тестовый проект. Сохранить данные примитивного типа с помощью UserDefaults.
 Создать метод, который очищает ключи UserDefaults. Проверить, что они сохранились в SandBox (папка приложения) или на устройстве или на симуляторе (NSHomeDictionary).
 */

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
