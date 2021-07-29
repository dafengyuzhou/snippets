//___FILEHEADER___

___IMPORTHEADER_cocoaTouchSubclass___

NS_ASSUME_NONNULL_BEGIN

/**
 
 **/

@interface ___FILEBASENAMEASIDENTIFIER___ : NSObject

@property (nonatomic, strong) RACSubject *rac_refreshDataSubject;

- (void)loadData;

- (void)loadNextData;


@end

NS_ASSUME_NONNULL_END
