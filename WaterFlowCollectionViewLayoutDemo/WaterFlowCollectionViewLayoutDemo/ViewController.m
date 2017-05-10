//
//  ViewController.m
//  WaterFlowCollectionViewLayoutDemo
//
//  Created by Ngmm_Jadon on 2017/5/10.
//  Copyright © 2017年 Ngmm_Jadon. All rights reserved.
//

#import "ViewController.h"
#import "WaterFlowCollectionViewLayout.h"

@interface ViewController ()<WaterFlowCollectionViewLayoutDelegate,UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

static NSString *const reuseCellId = @"reuseId";

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.collectionView];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseCellId];
}

#pragma mark - UICollectionView datasource
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 50;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseCellId forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor redColor];
    return  cell;
}

#pragma mark - WaterFlowLayout delegate
//必须实现
- (CGFloat)waterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout heightForItemAtIndexPath:(NSInteger)index ItemWith:(CGFloat)width {
    return 100 + arc4random_uniform(100);
}

//以下为optional
- (NSInteger)columnCountOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout {
    return 4;
}

- (CGFloat)columnMarginOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout {
    return 10;
}

- (CGFloat)rowMarginOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout {
    return 10;
}

- (UIEdgeInsets)edgeInsetsOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout {
    return UIEdgeInsetsMake(10, 10, 10, 10);
}

#pragma mark -lazyLoad
- (UICollectionView *)collectionView {
    if (!_collectionView) {
        WaterFlowCollectionViewLayout *layout = [[WaterFlowCollectionViewLayout alloc] init];
        layout.delegate = self;
        _collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        _collectionView.backgroundColor = [UIColor whiteColor];
    }
    return _collectionView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
