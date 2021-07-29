//___FILEHEADER___

#import "___FILEBASENAME___.h"

static NSSet * ActionSet;

@implementation ___FILEBASENAMEASIDENTIFIER___

+ (BOOL)checkAction:(NSString *)action {
    if (!ActionSet) {
        ActionSet = [NSSet setWithArray:@[<#value #>]];
    }
    
    if ([ActionSet containsObject:action]) {
        return YES;
    }else {
        return NO;
    }
}

+ (id)handleAction:(NSString *)action params:(NSMutableDictionary *)params {
    
    id res;
    if ([action isEqualToString:<#value #>]) {

    }

    return res;
}

@end
