require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = 'react-native-trustkit-wrapper'
  s.version      = package["version"]
  s.summary      = package["description"]
  s.author       = package["author"]

  s.homepage     = package["homepage"]

  s.license      = package["license"]
  s.platform     = :ios, "12.0"

  s.source       = { :git => "git+https://github.com/Statoil/react-native-trustkit.git", :tag => "#{s.version}" }
  s.source_files = "ios/RNTrustkitPlugint/**/*.{h,m}"
  s.static_framework = true

  s.dependency 'React'
  s.dependency 'TrustKit', '2.0.0'


end
