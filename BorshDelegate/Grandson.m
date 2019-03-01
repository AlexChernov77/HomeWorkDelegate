//
//  Grandson.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import "Grandson.h"
#import "DateManager.h"

@implementation Grandson

- (BOOL)borshServed
{
	DateManager* dateManager = [DateManager new];
	BOOL isLunchTime = dateManager.isLunchTime;
	if(isLunchTime) {
		NSLog(@"Внучок: Кушаю борщ");
		NSLog(@"Внучок: Помой посуду");
		return true;
	} else {
		NSLog(@"Внучок: Сейчас не то время чтоб кушать борщи");
		return false;
	}
}
@end
