Pod::Spec.new do |s|
  s.name         = "CCThemeManager"
  s.version      = "2.1.2"

  s.summary      = "SapphireInfo Color Theme Manager."
  s.description  = <<-DESC
                   SapphireInfo color theme manager.
                   DESC

  s.homepage     = "https://github.com/CalvinChangCC/CCThemeManager"
  s.license      = "MIT"
  s.author       = { "calvin.chang" => "tobehappy132@gmail.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "git@github.com:CalvinChangCC/CCThemeManager.git", :tag => s.version }
  s.source_files = "Classes/**/*.{swift}"
  s.requires_arc = true
  s.swift_version = '4.2'
end
