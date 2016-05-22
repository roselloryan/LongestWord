//
//  main.m
//  LongestWord


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *line = @"for some word longer than othersrrr";
        
        NSMutableArray *sepArray = [[line componentsSeparatedByString:@" "] mutableCopy];
        
        if (sepArray.count == 1) {
            NSLog(@"line: %@", line);
        }
        else {
            
            NSInteger i = 0;
            NSInteger loopCount = sepArray.count - 1;
            for (i = 0; i < loopCount; i++) {
                NSString *stringOne = [sepArray objectAtIndex:0];
                NSString *stringTwo = [sepArray objectAtIndex:1];
                
                if (stringOne.length >= stringTwo.length) {
                    [sepArray removeObjectAtIndex:1];
                }
                else {
                    [sepArray removeObjectAtIndex:0];
                }
            }
        }
        NSString *solutionString = [sepArray objectAtIndex:0];
        NSLog(@"solutionString: %@",solutionString);
        
    }
    return 0;
}
