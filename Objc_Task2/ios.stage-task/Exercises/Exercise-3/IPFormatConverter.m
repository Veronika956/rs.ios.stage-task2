#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    
    if ((numbersArray == nil)||([numbersArray  isEqual: @[]])){return @"";}
    
    for (NSNumber *number in numbersArray){
        if ([number intValue] < 0){
            return @"Negative numbers are not valid for input.";
        } else if ([number intValue] > 255 ){
            return @"The numbers in the input array can be in the range from 0 to 255.";
        }
    }
    
    if (numbersArray.count > 4){
        return nil;
    } else if (numbersArray.count < 4){
        NSMutableArray *addArray = [NSMutableArray array];
        [addArray addObjectsFromArray:numbersArray];
        while (addArray.count < 4) {
            [addArray addObject:@0];
        }
        return [addArray componentsJoinedByString:@"."];
    }
    
    return [numbersArray componentsJoinedByString:@"."];
}

@end
