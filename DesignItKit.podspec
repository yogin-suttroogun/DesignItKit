Pod::Spec.new do |s|
  s.name             = 'DesignItKit'
  s.version          = '0.0.1'
  s.summary          = 'A modern iOS design system framework for building consistent, elegant interfaces.'

  s.homepage         = 'https://github.com/yogin-suttroogun/DesignItKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Yogin Suttroogun' => 'yo.suttroogun@gmail.com' }
  s.source           = { :git => 'https://github.com/yogin-suttroogun/DesignItKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '14.0'

  s.source_files = 'DesignItKit/Sources/**/*.{swift}'
  s.resources = 'DesignItKit/**/*.{lproj,ttf,xcassets,json}'
  s.dependency 'SnapKit', '5.7.1'
end
