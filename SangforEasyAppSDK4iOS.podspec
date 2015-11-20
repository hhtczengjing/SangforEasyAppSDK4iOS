Pod::Spec.new do |s|
  s.name         = "SangforEasyAppSDK4iOS"
  s.version      = "0.1"
  s.summary      = "Easy App SDK iOS版本"
  s.description  = "深信服Easy APP iOS版SDK,本版本只提供本人多项目集成使用,如需使用请联系深信服公司."
  s.homepage     = "https://github.com/hhtczengjing/SangforEasyAppSDK4iOS"
  s.license      = { :type => "Copyright", :text => "Copyright© 2000-2015 Sangfor Technologies Co., Ltd. All rights reserved."}
  s.author       = { "Sangfor" => "sales@sangfor.com" }
  s.source       = { :git => "https://github.com/hhtczengjing/SangforEasyAppSDK4iOS.git", :tag => "0.1" }
  s.platform     = :ios, "6.0"
  s.source_files  = "SangforSdk", "SangforSdk/**/*.{h,m}"
  spec.requires_arc = false
  s.public_header_files = "SangforSdk/**/*.h"
  s.preserve_paths = "SangforSdk/libSangforSdk.a"
  s.vendored_libraries = "SangforSdk/libSangforSdk.a"
  s.frameworks = "CFNetwork", "SystemConfiguration", "MobileCoreServices", "Security", "ImageIO"
  s.libraries = "c++", "xml2"
  s.xcconfig = {
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/SangforEasyAppSDK4iOS/**"'
  }
end
