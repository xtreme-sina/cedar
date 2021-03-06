#import "SimpleIncrementer.h"

@implementation SimpleIncrementer

@synthesize value = value_;

- (void)increment {
    ++self.value;
}

- (void)incrementBy:(size_t)amount {
    self.value += amount;
}

- (void)incrementByNumber:(NSNumber *)number {
    self.value += [number intValue];
}

- (void)incrementByABit:(size_t)aBit andABitMore:(NSNumber *)aBitMore {
    self.value += aBit + [aBitMore intValue];
}

- (void)incrementWithException {
    [[NSException exceptionWithName:NSInternalInconsistencyException reason:@"wibble" userInfo:nil] raise];
}

@end
