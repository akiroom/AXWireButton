Pod::Spec.new do |s|
  s.name             = "AXWireButton"
  s.version          = "1.0.0"
  s.summary          = "Wire style button for iOS flat design"
  s.description      = <<-DESC
                       UIButton with Wire / Border style.
                       It looks good for iOS flat design
                       DESC
  s.homepage         = "https://github.com/akiroom/AXWireButton"
  s.screenshots      = "https://raw.githubusercontent.com/akiroom/AXWireButton/master/Screenshot.gif"
  s.license          = 'MIT'
  s.author           = { "akiroom" => "akiyama@akiroom.com" }
  s.source           = { :git => "https://github.com/akiroom/AXWireButton.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akiroom'

  s.platform     = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  s.requires_arc = true

  s.source_files = 'Classes'

  s.ios.exclude_files = 'Classes/osx'
end
