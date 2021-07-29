//___FILEHEADER___

#import "___FILEBASENAME___.h"
/*ViewController*/

/*View&&Util*/
#import "UITableView+JYEmptyView.h"
#import "GKTRefresh.h"

/*model*/

/*Service*/
#import "GKT<#value #>Service.h"

@interface ___FILEBASENAMEASIDENTIFIER___ ()<UITableViewDelegate, UITableViewDataSource>
// UI
@property (nonatomic, strong) UITableView *tableView;

// Data
@property (nonatomic, strong) NSArray *arrayData;

// Service
@property (nonatomic, strong) GKT<#value #>Service *service;

@end

@implementation ___FILEBASENAMEASIDENTIFIER___

#pragma mark - life cycle
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = <#value #>;
    [self loadUI];
    @weakify(self)
    [self.service.rac_refreshDataSubject subscribeNext:^(id x) {
        @strongify(self)
        RACTupleUnpack(NSArray *array, NSNumber *more) = x;
        [self.tableView.mj_header endRefreshing];
        [self.tableView.mj_footer endRefreshing];
        self.arrayData = [array copy];
        if (more.boolValue) {
            [self.tableView.mj_footer resetNoMoreData];
        }else {
            [self.tableView.mj_footer endRefreshingWithNoMoreData];
        }
        if (self.arrayData.count) {
            self.tableView.mj_footer.hidden = NO;
            self.tableView.backgroundColor = [UIColor groupTableViewBackgroundColor];
        } else {
            self.tableView.mj_footer.hidden = YES;
            self.tableView.backgroundColor = [UIColor whiteColor];
        }
        [self.tableView reloadData];
    }];
    // load Data
    [self.service loadData];
}

- (void)viewDidLayoutSubviews {
    self.tableView.noteView.frame = CGRectMake(0, 0, ScreenWidth, GKT_SCREEN_HEIGHT);
}

- (void)loadUI {
    [self.view addSubview:self.tableView];
    @weakify(self)
    [self.tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        @strongify(self)
        make.edges.equalTo(self.view);
    }];
    self.tableView.mj_header = [GKTRefresh gkt_headerWithRefreshingAction:^{
        @strongify(self)
        [self.service loadData];
    }];
    
    self.tableView.mj_footer = [GKTRefresh gkt_footerWithRefreshingAction:^{
        @strongify(self)
        [self.service loadNextData];
    }];
    [self.tableView addNoteViewWithpicName:@"search_no_data" noteText:<#value #> refreshBtnImg:nil];
}


#ifdef DEBUG
- (void)dealloc {
    NSLog(@"%s", __func__);
}
#endif

#pragma mark - public Method

#pragma mark - private method

#pragma mark - event response

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView willDisplayCell:(GKTOrderListTableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    [cell rendCellWithModel:self.arrayData[indexPath.row]];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return <#value #>;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

}

#pragma mark - UITableViewDataSource
//...(多个代理方法依次往下写)
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.arrayData.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [tableView dequeueReusableCellWithIdentifier:<#value #> forIndexPath:indexPath];
}
#pragma mark - getters and setters
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerNib:[UINib nibWithNibName:<#value #> bundle:nil] forCellReuseIdentifier:<#value #>];
        _tableView.sectionHeaderHeight = 8;
        _tableView.sectionFooterHeight = 0;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        UIView *view = UIView.new;
        view.height = 8;
        _tableView.tableHeaderView = view;
        UIView *view1 = UIView.new;
        view1.height = 50;
        _tableView.tableFooterView = view1;
        _tableView.backgroundColor = [UIColor whiteColor];
    }
    return _tableView;
}
@end
