Pod::Spec.new do |s|

  s.name         = "WaterFlowCollectionViewLayout"
  s.version      = "0.0.2"
  s.summary      = "A normal waterflow layout for collectionView."
  s.description  = %{A normal waterflow layout for collectionView.}

  s.license      = "MIT"
  s.author       = { "Ngmm_Jadon" => "maojiadong@ngmm365.com" }
  s.homepage     = "https://github.com/qigeligedongdongqiang/WaterFlowCollectionViewLayout"
  s.source       = { :git => "https://github.com/qigeligedongdongqiang/WaterFlowCollectionViewLayout.git", :tag => "0.0.1" }
  s.source_files  = "WaterFlowCollectionViewLayout", "*.{h,m}"

  s.requires_arc = true
  s.platform     = :ios, "5.0"
  s.ios.frameworks = 'Foundation', 'UIKit'

end
