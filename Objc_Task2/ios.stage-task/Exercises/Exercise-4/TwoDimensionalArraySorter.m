#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array == nil){return @[];}
    
    for (NSArray *subArray in array){
        if (![subArray isKindOfClass:[NSArray class]]) return @[];
    }
    
    NSMutableArray *newArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < [array count]; i++) {
        for (int j = 0; j < [array[i] count]; j++) {
            [newArray addObject: array[i][j]];
        }
    }
    
    NSSortDescriptor *sortDescriptor;
    sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    NSArray *sortDescriptors = [NSArray arrayWithObject:sortDescriptor];
    NSArray *sortedArray = [newArray sortedArrayUsingDescriptors:sortDescriptors];
    
    return sortedArray;
}

@end
