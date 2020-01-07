#
# Be sure to run `pod lib lint JCUserService.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'JCUserService'
  s.version          = '0.2.0'
  s.summary          = 'A short description of JCUserService.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/serilesjam/JCUserService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jam' => 'hxjiamiao@126.com' }
  s.source           = { :git => 'https://github.com/serilesjam/JCUserService.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.public_header_files = 'JCUserService/Classes/{JCUserInfo,JCMediatorProtocol+UserService}.h'
  s.source_files = 'JCUserService/Classes/**/*'
  
  s.resource_bundles = {
    'JCUserService' => ['JCUserService/Assets/*.{xib,xcassets,imageset,png,json,storyboard}']
  }

  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'JCToolKit'
  s.dependency 'ServiceDemo'
end
