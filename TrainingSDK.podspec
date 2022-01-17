#
# Be sure to run `pod lib lint VitaleSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TrainingSDK'
  s.version          = '1.0'
  s.summary          = 'Intelligent, automatic, comprehensive, adaptive Training System'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = 'https://www.myvitale.com/'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Miguel Muñoz' => 'miguel.munoz@myvitale.com' }
  s.source           = { :git => 'https://github.com/miguelmunozfer/TrainingSDK.git', :tag => "1.0" }
  # s.social_media_url = 'https://twitter.com/mmunozfer'
  # s.resource = 'VitaleSDK.xcframework'
  s.ios.deployment_target = '11.0'
  s.vendored_frameworks = 'TrainingSDK.xcframework' # Your XCFramework
  s.dependency 'Alamofire', '5.4.0'
  s.dependency 'SwiftyJSON', '5.0.0'
  s.dependency 'SwiftDate', '6.2.0'
  s.dependency  'Localize-Swift', '3.2.0'
  s.dependency  'FMDB', '2.7.5'
  s.dependency  'YoutubePlayer-in-WKWebView', '0.3.4'
  s.dependency  'HCVimeoVideoExtractor', '0.0.1'
  s.dependency  'Instructions', '1.3.1'
  s.dependency  'Charts', '3.6.0'
  s.dependency  "Hero"
  s.dependency  'JWTDecode', '~> 2.6'
  s.swift_version = "5.0"
  s.xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

end
