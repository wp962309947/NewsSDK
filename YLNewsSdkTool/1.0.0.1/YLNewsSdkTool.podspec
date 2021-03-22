Pod::Spec.new do |spec|

    spec.name         = "YLNewsSdkTool"
    spec.version      = "1.0.0.1"
    spec.summary      = "YLNewsSdk suport iOS"

    spec.description  = <<-DESC
    YLNewsSdk trusteeship
                    DESC
                    
    spec.homepage     = "https://github.com/YLNewsSDK-iOS/YLNewsSDK.git"
    spec.license      = "MIT"
    spec.author             = { "weipeng.w" => "weipeng.w@qq.com" }
    spec.platform     = :ios, "10.0"

    spec.source       = { :git => "https://github.com/YLNewsSDK-iOS/YLNewsSDK.git", :tag => "#{spec.version}" }
    spec.resource  = "YLNewsSdk/YLIFSdkBundle.bundle"
    spec.vendored_frameworks = "YLNewsSdk/YLInfoFlowSDK.framework"

    spec.frameworks = "UIKit","CoreFoundation","QuartzCore","ImageIO","Accelerate", "MobileCoreServices"

    spec.libraries = "sqlite3.0", "z"
    spec.requires_arc = true
    
    spec.pod_target_xcconfig = {'VALID_ARCHS[sdk=iphonesimulator*]' => ''}
    
    spec.dependency "Bytedance-UnionAD", "~> 2.9.5.8"

end
