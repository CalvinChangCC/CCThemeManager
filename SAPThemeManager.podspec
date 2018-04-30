Pod::Spec.new do |s|
  s.name         = "SAPThemeManager"
  s.version      = "1.0.0"
  s.summary      = "SapphireInfo Color Theme Manager."
  s.description  = <<-DESC
                   SapphireInfo color theme manager.
                   DESC

  s.homepage     = "http://git.sapphireinfo.com.tw/ios/SAPTabView.git"
  s.license      = "MIT"
  s.author       = { "calvin.chang" => "calvin.chang@sapphireinfo.com.tw" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@git.sapphireinfo.com.tw:ios/SAPTabView.git", :tag => s.version }
  s.source_files = "Classes/**/*.{swift,h}"
  s.requires_arc = true
  s.dependency "Colours", "~> 5.13.0"
  s.dependency "SAPFoundation", "~> 1.0.0"
end
