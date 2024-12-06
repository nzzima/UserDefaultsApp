//
//  main.m
//  UserDefaultsApp
//
//  Created by Nikita Krylov on 05.12.2024.
//

/* (1) Completed (check ViewController.h and ViewController .m)
 <Создать тестовый проект. Сохранить данные примитивного типа с помощью UserDefaults.
 Создать метод, который очищает ключи UserDefaults. Проверить, что они сохранились в SandBox (папка приложения) или на устройстве или на симуляторе (NSHomeDictionary).>
 */

/* (2) In progress...
 <Создать класс ColorTitle, который хранит 2 свойства UiColor tileColor, CGPoint tileOrigin. Данный класс реализовывает протокол NSCoding. С помощью NSKeyedArchiver превратить объект в Data и сохранить в UserDefaults. Далее получить данные из UserDefaults и создать объект с помощью NSKeyedUnarchiver.>
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
