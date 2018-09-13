Pod::Spec.new do |s|
    s.name             = 'LinkedInSwift'
    s.version          = '1.0.0'
    s.summary          = 'LinkedIn SDK wrapper for swift.'
    s.homepage         = 'https://github.com/macherlaDabhishek/LinkedInSwift'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Abhishek Macherla' => 'abhishek.macherla@photoninfotech.net' }
    s.source           = { :git => 'https://github.com/macherlaDabhishek/LinkedInSwift.git', :tag => s.version.to_s }
    s.module_name      = 'LinkedInSwift'

    s.ios.deployment_target = '9.0'
    s.source_files = 'Sources/*.swift'
    s.preserve_paths = 'Sources/module.modulemap', 'Sources/LinkedInSDK.h'
    s.vendored_frameworks = 'Sources/linkedin-sdk.framework'
    s.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(PODS_TARGET_SRCROOT)/Sources' }
end
