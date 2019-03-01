//
//  Granny.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Granny.h"


@implementation Granny

- (void)serveLunch
{
	NSLog(@"Бабушка: Внучок будешь борщ?");
	BOOL eatBorsh = self.borshDelegate.borshServed;
	if (eatBorsh) {
		[self washDishes];
	}
}

- (void)washDishes {
	NSLog(@"Бабушка: Мою посуду");
}

@end
