WaterFlowCollectionViewLayout is a simple custom layout for collectionView,you can use it to implement waterflow layout easily only needing to  realise delegate methods.

## How To Start

### Installation with CocoaPods

[CocoaPods](http://cocoapods.org/) is a dependency manager for Objective-C, which automates and simplifies the process of using 3rd-party libraries like WaterFlowCollectionViewLayout in your projects. 

To integrate WaterFlowCollectionViewLayout into your Xcode project using CocoaPods, specify it in your `Podfile`:

```objective-c
platform :ios, '5.0'

target 'TargetName' do
pod 'WaterFlowCollectionViewLayout', '~> 0.0.1'
end
```

## Usage

```objective-c
@required
- (CGFloat)waterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout heightForItemAtIndexPath:(NSInteger)index ItemWith:(CGFloat)width;

@optional
- (NSInteger)columnCountOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout;
- (CGFloat)columnMarginOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout;
- (CGFloat)rowMarginOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout;
- (UIEdgeInsets)edgeInsetsOfWaterFlowCollectionViewLayout:(WaterFlowCollectionViewLayout *)layout;
```

## Review

![review](/Users/Admin/Desktop/WaterFlowCollectionViewLayout/review.png)

## License

WaterFlowCollectionViewLayout is released under the MIT license. See LICENSE for details.