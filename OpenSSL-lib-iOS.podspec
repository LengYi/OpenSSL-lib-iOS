#
# Be sure to run `pod lib lint OpenSSL-lib-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenSSL-lib-iOS'
  s.version          = '0.1.0'
  s.summary          = '根据最新官方源码编译的 OpenSSL iOS 库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  根据最新官方源码编译的 OpenSSL iOS 库, 官方网址: https://www.openssl.org/source/
                       DESC

  s.homepage         = 'https://github.com/LengYi/OpenSSL-lib-iOS'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '707689817@qq.com' => '707689817@qq.com' }
  s.source           = { :git => 'https://github.com/LengYi/OpenSSL-lib-iOS.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'OpenSSL-lib-iOS/Classes/**/*'
  
  s.ios.vendored_frameworks = 'OpenSSL-lib-iOS/Vendors/openssl.framework'
  s.user_target_xcconfig = { 'FRAMEWORK_SEARCH_PATHS' => '${PODS_ROOT}/../../OpenSSL-lib-iOS/Vendors' }

  # s.resource_bundles = {
  #   'OpenSSL-lib-iOS' => ['OpenSSL-lib-iOS/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
