Pod::Spec.new do |s|
  s.name         = "SAPThemeManager"
  s.version      = "2.1.0"

  s.summary      = "SapphireInfo Color Theme Manager."
  s.description  = <<-DESC
                   SapphireInfo color theme manager.
                   DESC

  s.homepage     = "http://git.sapphireinfo.com.tw/ios/SAPThemeManager.git"
  s.license      = "MIT"
  s.author       = { "calvin.chang" => "calvin.chang@sapphireinfo.com.tw" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@git.sapphireinfo.com.tw:ios/SAPThemeManager.git", :tag => s.version }
  s.source_files = "Classes/**/*.{swift}"
  s.requires_arc = true
  s.swift_version = '4.2'
end
