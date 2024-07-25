#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'media'
  s.version          = '0.0.1'
  s.summary          = 'AV Playout in Flutter'
  s.description      = <<-DESC
AV Playout in Flutter
                       DESC
  s.homepage         = 'http://digitaloasis.ae'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Digital Oasis' => 'hello@digitaloasis.ae' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end

