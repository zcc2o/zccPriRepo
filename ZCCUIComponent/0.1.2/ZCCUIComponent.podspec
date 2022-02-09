#
# Be sure to run `pod lib lint ZCCUIComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZCCUIComponent'
  s.version          = '0.1.2'
  s.summary          = '一个即将会很丰富的组件库～'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zcc2o/ZCCUIComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zcc2o' => 'zcc131014@gmail.com' }
  s.source           = { :git => 'https://github.com/zcc2o/ZCCUIComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  if ENV["IS_DEBUG"] == "1"
    s.subspec 'Tool' do |ss|
      ss.source_files = 'ZCCUIComponent/Classes/Tool/*.{h,m,mm}'
    end

    s.subspec 'SegmentView' do |ss|
      ss.source_files = 'ZCCUIComponent/Classes/SegmentView/*.{h,m,mm}'
    end
    
  else
    s.subspec 'Product' do |framework|
    # 二进制引用
      framework.vendored_frameworks = 'ZCCUIComponent/Product/ZCCUIComponentFramework.framework'
    end
  end

  
  
  # s.resource_bundles = {
  #   'ZCCUIComponent' => ['ZCCUIComponent/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/SegmentView/ZCCSegment.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # }
  # }
end
