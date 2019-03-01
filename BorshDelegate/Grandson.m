//
//  Grandson.m
//  BorshDelegate
//
//  Created by Ilya Lunkin on 28/02/2019.
//  Copyright © 2019 Sberbank. All rights reserved.
//

#import "Grandson.h"


@implementation Grandson

- (BOOL)borshServed
{
	BOOL isLunchTime = [self isLunchTime];
	if(isLunchTime) {
		NSLog(@"Внучок: Кушаю борщ");
		NSLog(@"Внучок: Помой посуду");
		return true;
	} else {
		NSLog(@"Внучок: Сейчас не то время чтоб кушать борщи");
		return false;
	}
}

- (BOOL)isLunchTime {
	
	NSString *currentStrDate1 = @"14:00:00";
	NSString *currentStrDate2 = @"16:00:00";
	
	NSDateFormatter *dateFormatter=[[NSDateFormatter alloc] init];
	
	[dateFormatter setDateFormat:@"HH:mm:ss"];
	NSDate *date1 = [dateFormatter dateFromString:currentStrDate1];
	NSDate *date2 = [dateFormatter dateFromString:currentStrDate2];
	
	NSCalendar* calendar = [NSCalendar currentCalendar];
	
	unsigned unitFlags = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
	NSDateComponents* comp = [calendar components:unitFlags fromDate:[NSDate date]];
	NSDateComponents* comp1 = [calendar components:unitFlags fromDate:date1];
	NSDateComponents* comp2 = [calendar components:unitFlags fromDate:date2];
	
	if ([comp hour] >= [comp1 hour] && [comp hour] <=
		[comp2 hour]) {
		if ([comp2 hour] == 16 && [comp2 minute] >= 0) {
			return false;
		}
		return true;
	}
	return false;
}
@end
