#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    int m = 0;
    
        for (int i = 0; i < 8; i++) {
            m <<= 1;
            m |= n&1;
            n >>= 1;
        }

    return m;
}
