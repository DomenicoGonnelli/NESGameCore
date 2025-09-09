Pod::Spec.new do |spec|
  spec.name         = "NESGameCore"
  spec.version      = "0.2"
  spec.summary      = "Nintendo Entertainment System plug-im."
  spec.description  = "iOS framework that wraps Nestopia to allow playing NES games"
  spec.homepage     = "https://github.com/DomenicoGonnelli/NESGameCore"
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/DomenicoGonnelli/NESGameCore.git" }

  spec.author             = { "Domenico Gonnelli" => "domenico.gonnelli@outlook.it" }
  
  spec.source_files  = "NESGameCore/**/*.{h,m,mm,swift}", "NestopiaJS/NESEmulatorBridge.cpp", "nestopia/source/core/**/*.{hpp,h}"
  spec.public_header_files = "NestopiaJS/NESEmulatorBridge.hpp"
  spec.header_mappings_dir = ""
  spec.resource_bundles = {
    "NESGameCore" => ["NESGameCore/**/*.dgmapping", "NESGameCore/**/*.dgskin", "NestopiaJS/NstDatabase.xml"]
  }
  
  spec.dependency 'GameCore'
    
  spec.xcconfig = {
    "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "FRAMEWORK NATIVE",
    "USER_HEADER_SEARCH_PATHS" => '"${PODS_CONFIGURATION_BUILD_DIR}/GameCore/Swift Compatibility Header"'
  }
  
end
