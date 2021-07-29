//___FILEHEADER___

#import "___FILEBASENAME___.h"

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

@property (nonatomic, strong) NSMutableArray *arrayData;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

- (instancetype)init {
    self = [super init];
    if (self) {
        self.arrayData = [NSMutableArray array];
        self.rac_refreshDataSubject = [RACSubject subject];
    }
    return self;
}

- (void)loadData {
    // 网络缓存数据
    [GKTNetworking loadCachePostRequestWithBaseUrl:<#value #>
                                            method:<#value #>
                                           parames:@{
                                               @"prev": @(0),
                                               @"size": @(20)
                                           }
                                           success:^(__kindof GKTNetworkResponse * _Nullable response) {
        [self.arrayData removeAllObjects];
        [self.arrayData addObjectsFromArray:[NSArray modelArrayWithClass:<#value #>.class json:response.result[@"data"][@"list"]]];
        [self.rac_refreshDataSubject sendNext:RACTuplePack(self.arrayData, response.result[@"data"][@"page"][@"more"])];
    } failure:^(__kindof GKTNetworkResponse * _Nullable response) {
        [self.rac_refreshDataSubject sendNext:RACTuplePack(self.arrayData, @(NO))];
    }];
}

- (void)loadNextData {
    // 网络数据
    <#value #> *model = self.arrayData.lastObject;
    [GKTNetworking loadNetPostRequestWithBaseUrl:<#value #>
                                          method:@"order/list"
                                         parames:@{
                                             @"prev": @(<#value #>),
                                             @"size": @(20)
                                         }
                                         success:^(__kindof GKTNetworkResponse * _Nullable response) {
        [self.arrayData addObjectsFromArray:[NSArray modelArrayWithClass:<#value #>.class json:response.result[@"data"][@"list"]]];
        [self.rac_refreshDataSubject sendNext:RACTuplePack(self.arrayData, response.result[@"data"][@"page"][@"more"])];
    } failure:^(__kindof GKTNetworkResponse * _Nullable response) {
        [self.rac_refreshDataSubject sendNext:RACTuplePack(self.arrayData, @(NO))];
    }];
}

@end
