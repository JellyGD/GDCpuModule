#
# Be sure to run `pod lib lint GDCpuModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'GDCpuModule'
  s.version          = '0.0.2'
  s.summary          = 'CPU 相关模块使用， CPU资源绘制 优化'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
提供CPU几个简单的问题代码和优化后的效果。
提供检查CPU的使用情况检查。
                       DESC

  s.homepage         = 'https://github.com/JellyGD/GDCpuModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'jellyGD' => 'jelly130520@gmail.com' }
  s.source           = { :git => 'https://github.com/JellyGD/GDCpuModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'GDCpuModule/Classes/**/*'
  
  # s.resource_bundles = {
  #   'GDCpuModule' => ['GDCpuModule/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
    s.dependency 'CTMediator'
  # s.dependency 'GDMediator'
end
