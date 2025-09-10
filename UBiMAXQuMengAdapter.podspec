
Pod::Spec.new do |s|
  s.name             = 'UBiMAXQuMengAdapter'
  s.version          = '1.3.6.0'
  s.summary          = 'UBiX聚合Sass SDK QuMeng Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXQuMengAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '11.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXQuMengAdapter.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

  s.dependency 'UBiMAXAdSDK'
  s.dependency 'UBiMAXNative'
  s.dependency 'QuMengAdSDK', '1.3.6'
end
