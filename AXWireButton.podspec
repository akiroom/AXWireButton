Pod::Spec.new do |s|
  s.name             = "AXWireButton"
  s.version          = "0.1.9"
  s.summary          = "Wire style button for iOS7 flat design"
  s.description      = <<-DESC
                       UIButton with Wire / Border style.
                       It looks good for iOS7 flat design
                       DESC
  s.homepage         = "https://github.com/akiroom/AXWireButton"
  s.screenshots      = "https://raw.githubusercontent.com/akiroom/AXWireButton/master/Screenshot.png"
  s.license          = 'MIT'
  s.author           = { "Hiroki Akiyama" => "aki-hiroki@nifty.com" }
  s.source           = { :git => "https://github.com/akiroom/AXWireButton.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/akiroom'

  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.requires_arc = true

  s.source_files = 'Classes'

  s.ios.exclude_files = 'Classes/osx'
end
