#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    
    NSInteger counter = 0;
    NSUInteger n = [array indexOfObjectIdenticalTo:array.lastObject];
    
        while (n > 0){
            for (int i = 0; i < array.count ; i++) {
                if ([[array objectAtIndex:n] intValue] - [[array objectAtIndex:i] intValue] == [number intValue]) {counter++;}
            }
            n--;
        }
    
    return counter;
}

@end
