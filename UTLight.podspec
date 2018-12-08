#
# Be sure to run `pod lib lint UTLight.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'UTLight'
  s.version          = '0.1.0'
  s.summary          = 'Kit easing work with UTI.'
  s.swift_version    = '4.2'

  s.description      = <<-DESC
  A kit easing work with UTI (Uniform Type Identification).
                       DESC

  s.homepage         = 'https://github.com/Vladlex/UTLight'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vladlex' => 'vladlexion@gmail.com' }
  s.source           = { :git => 'https://github.com/Vladlex/UTLight.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/vladlexion'

  s.ios.deployment_target = '9.0'

  s.source_files = 'UTLight/Classes/**/*'

  s.frameworks = 'Foundation', 'MobileCoreServices'
  
end
