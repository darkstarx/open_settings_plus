#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint open_settings_plus.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'open_settings_plus'
  s.version          = '0.0.1'
  s.summary          = 'Open settings easily.'
  s.description      = <<-DESC
  The most complete flutter plugin packages for open various settings screen, covering newer versions of ios and android.
                       DESC
  s.homepage         = 'https://github.com/yanncabral/open_settings_plus'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Yann Cabral' => 'iamyanndias@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '11.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end