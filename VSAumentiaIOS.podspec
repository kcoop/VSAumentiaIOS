Pod::Spec.new do |s|
  s.name         = "VSAumentiaIOS"
  s.version      = "1.0.1"
  s.summary      = "Aumentia Visual Search Framework for image recognition, motion detection and QR / bar code reader"
  s.description  = <<-DESC
                    To use the framework you will need an API Key. To request it, just send an email to info@aumentia.com with the following details:
                    Bundle Id of the application where you want to use the framework.
                    Name and description of the app where you want to use the framework.
                    Your ( or your company ) name.
                   DESC
  s.homepage     = "https://github.com/aumentia/VSAumentiaIOS/wiki"
  s.platform     = :ios, '5.0'
  s.author       = 'aumentia'
  s.license      = 'Restricted'
  s.requires_arc = true
  s.source       = { :git => 'https://github.com/aumentia/VSAumentiaIOS.git' }
  s.vendored_frameworks = 'HelloVisualSearch/HelloVisualSearch/SDK/VS.framework'
  s.ios.frameworks = 'Accelerate', 'QuartzCore', 'CoreMedia', 'CoreVideo', 'AVFoundation', 'UIKit', 'Foundation', 'CoreGraphics'
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-mthumb -lstdc++ -lz -lm -mfpu=neon -mtune=cortex-a8',
    'VALID_ARCHS' => 'arm64 armv7 armv7s'
  }
end
